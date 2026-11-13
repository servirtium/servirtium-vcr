## Volatile values

- request body: `<a:MessageID>urn:uuid:${messageId}</a:MessageID>`
- request body: `<a:To s:mustUnderstand="1">${endpoint}/Services/`
- request body: `&lt;SubmissionDate&gt;${submitted}&lt;/SubmissionDate&gt;`
- response body: `<a:RelatesTo>urn:uuid:${messageId}</a:RelatesTo>`

## Interaction 0: POST /Services/CaseService.svc

### Request headers recorded for playback:

```
```
### Request body recorded for playback (application/soap+xml):

```
<s:Envelope xmlns:a="http://www.w3.org/2005/08/addressing" xmlns:s="http://www.w3.org/2003/05/soap-envelope">
  <s:Header>
    <a:Action s:mustUnderstand="1">http://services.example.test/case/ICaseService/CreateCase</a:Action>
    <a:MessageID>urn:uuid:${messageId-1}</a:MessageID>
    <a:ReplyTo>
      <a:Address>http://www.w3.org/2005/08/addressing/anonymous</a:Address>
    </a:ReplyTo>
    <a:To s:mustUnderstand="1">${endpoint}/Services/CaseService.svc</a:To>
  </s:Header>
  <s:Body>
    <CreateCase xmlns="http://services.example.test/case">
      <caseData>&lt;CaseData&gt;&lt;Title&gt;Water leak&lt;/Title&gt;&lt;SubmissionDate&gt;${submitted}&lt;/SubmissionDate&gt;&lt;/CaseData&gt;</caseData>
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
    <a:RelatesTo>urn:uuid:${messageId-1}</a:RelatesTo>
  </s:Header>
  <s:Body>
    <CreateCaseResponse xmlns="http://services.example.test/case">
      <CaseId>CAS-1</CaseId>
    </CreateCaseResponse>
  </s:Body>
</s:Envelope>
```

