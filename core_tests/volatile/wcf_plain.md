## Interaction 0: POST /Services/CaseService.svc

### Request headers recorded for playback:

```
```
### Request body recorded for playback (application/soap+xml):

```
<s:Envelope xmlns:a="http://www.w3.org/2005/08/addressing" xmlns:s="http://www.w3.org/2003/05/soap-envelope">
  <s:Header>
    <a:Action s:mustUnderstand="1">http://services.example.test/case/ICaseService/CreateCase</a:Action>
    <a:MessageID>urn:uuid:{{uuid-1}}</a:MessageID>
    <a:ReplyTo>
      <a:Address>http://www.w3.org/2005/08/addressing/anonymous</a:Address>
    </a:ReplyTo>
    <a:To s:mustUnderstand="1">https://workpro--not-real.invalid:{{port-1}}/Services/CaseService.svc</a:To>
  </s:Header>
  <s:Body>
    <CreateCase xmlns="http://services.example.test/case">
      <caseData>&lt;CaseData&gt;&lt;Title&gt;Water leak&lt;/Title&gt;&lt;SubmissionDate&gt;{{timestamp-1}}&lt;/SubmissionDate&gt;&lt;/CaseData&gt;</caseData>
    </CreateCase>
  </s:Body>
</s:Envelope>
```
### Response headers recorded for playback:

```
Content-Type: application/soap+xml; charset=utf-8
```
### Response body recorded for playback (200: application/soap+xml):

```
<s:Envelope xmlns:a="http://www.w3.org/2005/08/addressing" xmlns:s="http://www.w3.org/2003/05/soap-envelope">
  <s:Header>
    <a:Action s:mustUnderstand="1">http://services.example.test/case/ICaseService/CreateCaseResponse</a:Action>
    <a:RelatesTo>urn:uuid:{{uuid-1}}</a:RelatesTo>
  </s:Header>
  <s:Body>
    <CreateCaseResponse xmlns="http://services.example.test/case">
      <CaseId>CAS-1</CaseId>
    </CreateCaseResponse>
  </s:Body>
</s:Envelope>
```

