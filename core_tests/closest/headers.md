## Interaction 0: POST /Services/Integration/CaseService.svc

### Request headers recorded for playback:

```
Content-Type: application/soap+xml; charset=utf-8
Expect: 100-continue
Accept-Encoding: gzip, deflate
```
### Request body recorded for playback (application/soap+xml; charset=utf-8):

```
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope"><s:Body><CreateCase xmlns="http://services.example.test/case/2013/08"><caseData>&lt;CaseData&gt;&lt;Title&gt;Water leak&lt;/Title&gt;&lt;SubjectValue&gt;Rule 1;Openness;&lt;/SubjectValue&gt;&lt;/CaseData&gt;</caseData></CreateCase></s:Body></s:Envelope>
```
### Response headers recorded for playback:

```
Content-Type: text/plain
```
### Response body recorded for playback (200: text/plain):

```
created
```

