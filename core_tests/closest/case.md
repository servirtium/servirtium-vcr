## Volatile values

- request body: `&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;`
- request body: `<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>`
- response body: `<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>`

## Interaction 0: POST /Services/LookupService.svc

### Request headers recorded for playback:

```
```
### Request body recorded for playback (application/soap+xml):

```
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope" xmlns:a="http://www.w3.org/2005/08/addressing"><s:Header><a:Action s:mustUnderstand="1">http://services.example.test/lookup/ILookupService/GetCountries</a:Action><a:MessageID>urn:uuid:{{messageId-1}}</a:MessageID><a:ReplyTo><a:Address>http://www.w3.org/2005/08/addressing/anonymous</a:Address></a:ReplyTo><a:To s:mustUnderstand="1">http://crm.example.test/Services/LookupService.svc</a:To></s:Header><s:Body><GetCountries xmlns="http://services.example.test/lookup"><includeInactive>false</includeInactive></GetCountries></s:Body></s:Envelope>
```
### Response headers recorded for playback:

```
Content-Type: application/soap+xml; charset=utf-8
```
### Response body recorded for playback (200: application/soap+xml):

```
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope" xmlns:a="http://www.w3.org/2005/08/addressing"><s:Header><a:Action s:mustUnderstand="1">http://services.example.test/lookup/ILookupService/GetCountriesResponse</a:Action><a:RelatesTo>urn:uuid:{{messageId-1}}</a:RelatesTo></s:Header><s:Body><GetCountriesResponse xmlns="http://services.example.test/lookup"><GetCountriesResult><Item>GB</Item><Item>IE</Item></GetCountriesResult></GetCountriesResponse></s:Body></s:Envelope>
```

## Interaction 1: POST /Services/LookupService.svc

### Request headers recorded for playback:

```
```
### Request body recorded for playback (application/soap+xml):

```
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope" xmlns:a="http://www.w3.org/2005/08/addressing"><s:Header><a:Action s:mustUnderstand="1">http://services.example.test/lookup/ILookupService/GetCategories</a:Action><a:MessageID>urn:uuid:{{messageId-2}}</a:MessageID><a:ReplyTo><a:Address>http://www.w3.org/2005/08/addressing/anonymous</a:Address></a:ReplyTo><a:To s:mustUnderstand="1">http://crm.example.test/Services/LookupService.svc</a:To></s:Header><s:Body><GetCategories xmlns="http://services.example.test/lookup"><includeInactive>false</includeInactive></GetCategories></s:Body></s:Envelope>
```
### Response headers recorded for playback:

```
Content-Type: application/soap+xml; charset=utf-8
```
### Response body recorded for playback (200: application/soap+xml):

```
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope" xmlns:a="http://www.w3.org/2005/08/addressing"><s:Header><a:Action s:mustUnderstand="1">http://services.example.test/lookup/ILookupService/GetCategoriesResponse</a:Action><a:RelatesTo>urn:uuid:{{messageId-2}}</a:RelatesTo></s:Header><s:Body><GetCategoriesResponse xmlns="http://services.example.test/lookup"><GetCategoriesResult><Item>Housing</Item><Item>Roads</Item></GetCategoriesResult></GetCategoriesResponse></s:Body></s:Envelope>
```

## Interaction 2: POST /Services/LookupService.svc

### Request headers recorded for playback:

```
```
### Request body recorded for playback (application/soap+xml):

```
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope" xmlns:a="http://www.w3.org/2005/08/addressing"><s:Header><a:Action s:mustUnderstand="1">http://services.example.test/lookup/ILookupService/GetSubjects</a:Action><a:MessageID>urn:uuid:{{messageId-3}}</a:MessageID><a:ReplyTo><a:Address>http://www.w3.org/2005/08/addressing/anonymous</a:Address></a:ReplyTo><a:To s:mustUnderstand="1">http://crm.example.test/Services/LookupService.svc</a:To></s:Header><s:Body><GetSubjects xmlns="http://services.example.test/lookup"><includeInactive>false</includeInactive></GetSubjects></s:Body></s:Envelope>
```
### Response headers recorded for playback:

```
Content-Type: application/soap+xml; charset=utf-8
```
### Response body recorded for playback (200: application/soap+xml):

```
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope" xmlns:a="http://www.w3.org/2005/08/addressing"><s:Header><a:Action s:mustUnderstand="1">http://services.example.test/lookup/ILookupService/GetSubjectsResponse</a:Action><a:RelatesTo>urn:uuid:{{messageId-3}}</a:RelatesTo></s:Header><s:Body><GetSubjectsResponse xmlns="http://services.example.test/lookup"><GetSubjectsResult><Item>Rule 1</Item><Item>Openness</Item></GetSubjectsResult></GetSubjectsResponse></s:Body></s:Envelope>
```

## Interaction 3: POST /Services/CaseService.svc

### Request headers recorded for playback:

```
```
### Request body recorded for playback (application/soap+xml):

```
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope" xmlns:a="http://www.w3.org/2005/08/addressing"><s:Header><a:Action s:mustUnderstand="1">http://services.example.test/case/ICaseService/CreateCase</a:Action><a:MessageID>urn:uuid:{{messageId-4}}</a:MessageID><a:ReplyTo><a:Address>http://www.w3.org/2005/08/addressing/anonymous</a:Address></a:ReplyTo><a:To s:mustUnderstand="1">http://crm.example.test/Services/CaseService.svc</a:To></s:Header><s:Body><CreateCase xmlns="http://services.example.test/case"><caseData>&lt;CaseData&gt;&lt;Title&gt;Water leak in flat 3&lt;/Title&gt;&lt;Description&gt;Ceiling drips when it rains&lt;/Description&gt;&lt;CountryValue&gt;GB&lt;/CountryValue&gt;&lt;CategoryValue&gt;Housing;Repairs;&lt;/CategoryValue&gt;&lt;SubjectValue&gt;Rule 1;Openness;&lt;/SubjectValue&gt;&lt;ContactEmail&gt;someone@example.test&lt;/ContactEmail&gt;&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;&lt;/CaseData&gt;</caseData></CreateCase></s:Body></s:Envelope>
```
### Response headers recorded for playback:

```
Content-Type: application/soap+xml; charset=utf-8
```
### Response body recorded for playback (200: application/soap+xml):

```
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope" xmlns:a="http://www.w3.org/2005/08/addressing"><s:Header><a:Action s:mustUnderstand="1">http://services.example.test/case/ICaseService/CreateCaseResponse</a:Action><a:RelatesTo>urn:uuid:{{messageId-4}}</a:RelatesTo></s:Header><s:Body><CreateCaseResponse xmlns="http://services.example.test/case"><CaseId>CAS-0001-FAKE</CaseId></CreateCaseResponse></s:Body></s:Envelope>
```

