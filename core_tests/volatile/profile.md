The volatile values of the case service, by contract. A hand-written fixture with obviously fake hosts.

## Volatile values

- request body, XML `{http://www.w3.org/2005/08/addressing}MessageID`: uuid
- request body, XML `{http://www.w3.org/2005/08/addressing}To` regex `:([0-9]+)(?:/|$)`: port
- request body, regex `&lt;SubmissionDate&gt;([^&]+)&lt;/SubmissionDate&gt;`: timestamp
- response body, XML `{http://www.w3.org/2005/08/addressing}MessageID`: uuid
- response body, XML `{http://www.w3.org/2005/08/addressing}RelatesTo`: uuid
