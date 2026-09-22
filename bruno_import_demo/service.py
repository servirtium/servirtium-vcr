#!/usr/bin/env python3
"""A contrived widget service for the Bruno-import demo.

Python stdlib only — no pip, no venv — because the point of the demo is the
IMPORT, not the service. Deterministic on purpose: state is reseeded at startup
and ids are assigned in order, so hydrating the collection twice produces the
same tape. Nothing here is random or time-dependent; a tape that embeds a
timestamp cannot be compared byte-for-byte on the next run.
"""
import json
import xml.etree.ElementTree as ET
from http.server import BaseHTTPRequestHandler, HTTPServer

WIDGETS = {}
NEXT_ID = 0


def seed():
    global WIDGETS, NEXT_ID
    WIDGETS = {1: {"id": 1, "name": "sprocket", "colour": "red"}}
    NEXT_ID = 2


class Handler(BaseHTTPRequestHandler):
    protocol_version = "HTTP/1.1"

    def _send(self, code, payload):
        body = json.dumps(payload, sort_keys=True).encode()
        self.send_response(code)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def _send_xml(self, code, xml_text):
        body = xml_text.encode()
        self.send_response(code)
        self.send_header("Content-Type", "application/xml")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def _read_raw(self):
        n = int(self.headers.get("Content-Length") or 0)
        return self.rfile.read(n) if n else b""

    def _read_json(self):
        n = int(self.headers.get("Content-Length") or 0)
        if not n:
            return {}
        try:
            return json.loads(self.rfile.read(n) or b"{}")
        except json.JSONDecodeError:
            return {}

    def _id(self):
        tail = self.path.rstrip("/").rsplit("/", 1)[-1]
        return int(tail) if tail.isdigit() else None

    def do_GET(self):
        if self.path.rstrip("/") == "/widgets.xml":
            root = ET.Element("widgets")
            for k in sorted(WIDGETS):
                w = ET.SubElement(root, "widget", id=str(WIDGETS[k]["id"]))
                ET.SubElement(w, "name").text = WIDGETS[k]["name"]
                ET.SubElement(w, "colour").text = WIDGETS[k]["colour"]
            return self._send_xml(200, ET.tostring(root, encoding="unicode"))
        if self.path.rstrip("/") == "/widgets":
            return self._send(200, {"widgets": [WIDGETS[k] for k in sorted(WIDGETS)]})
        wid = self._id()
        if wid in WIDGETS:
            return self._send(200, WIDGETS[wid])
        self._send(404, {"error": "no such widget"})

    def do_POST(self):
        global NEXT_ID
        if self.path.rstrip("/") == "/widgets.xml":
            # Accepts <widget><name>..</name><colour>..</colour></widget>
            try:
                el = ET.fromstring(self._read_raw() or b"<widget/>")
            except ET.ParseError:
                return self._send_xml(400, "<error>malformed xml</error>")
            wid = NEXT_ID
            NEXT_ID += 1
            name = (el.findtext("name") or "unnamed").strip()
            colour = (el.findtext("colour") or "grey").strip()
            WIDGETS[wid] = {"id": wid, "name": name, "colour": colour}
            out = ET.Element("widget", id=str(wid))
            ET.SubElement(out, "name").text = name
            ET.SubElement(out, "colour").text = colour
            return self._send_xml(201, ET.tostring(out, encoding="unicode"))
        data = self._read_json()
        wid = NEXT_ID
        NEXT_ID += 1
        WIDGETS[wid] = {"id": wid,
                        "name": data.get("name", "unnamed"),
                        "colour": data.get("colour", "grey")}
        self._send(201, WIDGETS[wid])

    def do_PUT(self):
        wid = self._id()
        if wid not in WIDGETS:
            return self._send(404, {"error": "no such widget"})
        WIDGETS[wid].update({k: v for k, v in self._read_json().items() if k != "id"})
        self._send(200, WIDGETS[wid])

    def do_DELETE(self):
        wid = self._id()
        if wid not in WIDGETS:
            return self._send(404, {"error": "no such widget"})
        del WIDGETS[wid]
        self._send(200, {"deleted": wid})

    def log_message(self, *args):
        pass


if __name__ == "__main__":
    import sys
    seed()
    port = int(sys.argv[1]) if len(sys.argv) > 1 else 0
    srv = HTTPServer(("127.0.0.1", port), Handler)
    print(srv.server_port, flush=True)
    srv.serve_forever()
