%% Test helper: a gen_tcp upstream that answers every request with a fixed
%% application/json body. start/1 returns the port; stop/1 shuts it down.
-module(servirtium_json_upstream).
-export([start/1, stop/1]).

start(Body) ->
    {ok, Listen} = gen_tcp:listen(0, [binary, {active, false}, {reuseaddr, true}, {packet, raw}]),
    {ok, Port} = inet:port(Listen),
    Pid = spawn(fun() -> loop(Listen, Body) end),
    ok = gen_tcp:controlling_process(Listen, Pid),
    register(name(Port), Pid),
    Port.

stop(Port) ->
    case whereis(name(Port)) of
        undefined -> ok;
        Pid -> exit(Pid, kill), ok
    end.

name(Port) -> list_to_atom("servirtium_json_upstream_" ++ integer_to_list(Port)).

loop(Listen, Body) ->
    case gen_tcp:accept(Listen) of
        {ok, Sock} ->
            {ok, _} = gen_tcp:recv(Sock, 0, 2000),
            gen_tcp:send(Sock, ["HTTP/1.1 200 OK\r\nContent-Type: application/json\r\nContent-Length: ",
                                integer_to_list(byte_size(Body)), "\r\nConnection: close\r\n\r\n", Body]),
            gen_tcp:close(Sock),
            loop(Listen, Body);
        _ -> ok
    end.
