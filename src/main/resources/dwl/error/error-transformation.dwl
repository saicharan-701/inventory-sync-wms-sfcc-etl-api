%dw 2.0
output application/json

var errorInfo=payload filter $.errorType==(error.errorType.namespace ++ ":" ++ error.errorType.identifier) map(items,index) ->{
    	"errorType": items.errorType,
		"errorCode": items.errorCode,
		"reason": items.reason,
		"message": items.message
}
var reducedErrorInfo=errorInfo reduce ($)
var BinaryString = if((error.errorMessage == null) or (upper(typeOf(error.errorMessage.typedValue)) == "BINARY") or (upper(typeOf(error.errorMessage.typedValue)) == "STRING") or (upper(typeOf(error.errorMessage.typedValue)) == "OBJECT"))
					true else false
var errorMessage = if (!(BinaryString) and (error.errorMessage.typedValue.error.message.value != null))
						error.errorMessage.typedValue.error.message.value
					else
						reducedErrorInfo.message default error.description
---
if (!(BinaryString) and (error.errorMessage.typedValue.errorCode?))
	error.errorMessage.typedValue
else

{
  "errorCode": reducedErrorInfo.errorCode,
  "errorMessage": if ((upper(typeOf(error.errorMessage.typedValue)) == "OBJECT") and error.errorMessage.typedValue != null) (error.errorMessage.typedValue.error.message.value) else  errorMessage,
  "errorDescription": error.description,
  "correlationId": correlationId,
  "timeStamp": now() >> "UTC"
}