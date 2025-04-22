%dw 2.0
output application/json
---
{
  status: "success",
  timestamp: now() >> "UTC",
  applicationName: app.name,
  correlationId: correlationId
} as Object {encoding: "UTF-8", mediaType: "application/json"}