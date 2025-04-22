%dw 2.0
output application/json
---
[
	{"errorType": "HTTP:CLIENT_SECURITY",
		"errorCode": 401,
		"reason": "Unauthorized",
		"message": error.description default "You have issues accessing the system"
	},
	{"errorType": "HTTP:FORBIDDEN",
		"errorCode": 403,
		"reason": "Unauthorized",
		"message": error.description default "You have issues accessing the system"
	},
	{"errorType": "HTTP:SECURITY",
		"errorCode": 401,
		"reason": "Unauthorized",
		"message": error.description default "You have issues accessing the system"
	},
	{"errorType": "MULE:SECURITY",
		"errorCode": 401,
		"reason": "Unauthorized",
		"message": error.description default "You have issues accessing the system"
	},
	{"errorType": "HTTP:UNAUTHORIZED",
		"errorCode": 401,
		"reason": "Unauthorized",
		"message": error.description default "You have issues accessing the system"
	},
	{"errorType": "HTTP:BAD_REQUEST",
		"errorCode": 400,
		"reason": "Bad Request",
		"message": error.description default "There was an issue with your request message."
	},
	{"errorType": "HTTP:PARSING",
		"errorCode": 400,
		"reason": "Bad Request",
		"message": error.description default "There was an issue with your request message."
	},
	{"errorType": "HTTP:NOT_FOUND",
		"errorCode": 404,
		"reason": "Not Found",
		"message": error.description default "The API has not been implemented"
	},
	{"errorType": "HTTP:NOT_ACCEPTABLE",
		"errorCode": 406,
		"reason": "Not Acceptable",
		"message": error.description default "One of the request or parameters is unacceptable"
	},
	{"errorType": "HTTP:UNSUPPORTED_MEDIA_TYPE",
		"errorCode": 415,
		"reason": "Unsupported Media Type",
		"message": error.description default "Media Type not supported"
	},
	{"errorType": "HTTP:CONNECTIVITY",
		"errorCode": 503,
		"reason": "Bad Connectivity",
		"message": error.description default "You have issues connecting to the system"
	},
	{"errorType": "HTTP:RETRY_EXHAUSTED",
		"errorCode": 503,
		"reason": "Bad Connectivity",
		"message": error.description default "You have issues connecting to the system"
	},
	{"errorType": "HTTP:SERVICE_UNAVAILABLE",
		"errorCode": 503,
		"reason": "Bad Connectivity",
		"message": error.description default "You have issues connecting to the system"
	},
	{"errorType": "HTTP:METHOD_NOT_ALLOWED",
		"errorCode": 405,
		"reason": "Method Not Allowed",
		"message": error.description default "The method has not been implemented"
	},
	{"errorType": "HTTP:TIMEOUT",
		"errorCode": 408,
		"reason": "Timeout",
		"message": error.description default "You request to the server has been timed-out"
	},
	{"errorType": "HTTP:TOO_MANY_REQUESTS",
		"errorCode": 429,
		"reason": "Too Many Requests",
		"message": error.description default "You have made too many requests to the server"
	},
    {"errorType": "HTTP:BASIC_AUTHENTICATION",
		"errorCode": 401,
		"reason": "Unauthorized",
		"message": error.description default "You have issues accessing the system"
	},
    {"errorType": "OS:INVALID_KEY",
		"errorCode": 400,
		"reason": "Invalid Key",
		"message": error.description default "Invalid key is configured"
	},
    {"errorType": "OS:KEY_NOT_FOUND",
		"errorCode": 404,
		"reason": "Key Not found",
		"message": error.description default "Key not found in object store"
	},
    {"errorType": "OS:STORE_NOT_AVAILABLE",
		"errorCode": 404,
		"reason": "Not Available",
		"message": error.description default "Object store is not available"
	},
	{"errorType": "APIKIT:BAD_REQUEST",
		"errorCode": 400,
		"reason": "Bad Request",
		"message": error.description default "Bad Request"
	},
	{"errorType": "APIKIT:NOT_FOUND",
		"errorCode": 404,
		"reason": "Not Found",
		"message": error.description default "Not Found"
	},
	{"errorType": "APIKIT:METHOD_NOT_ALLOWED",
		"errorCode": 405,
		"reason": "Method Not Allowed",
		"message": error.description default "Method Not Allowed"
	},
	{"errorType": "APIKIT:NOT_ACCEPTABLE",
		"errorCode": 406,
		"reason": "Not Acceptable",
		"message": error.description default "Not Acceptable"
	},
	{"errorType": "APIKIT:UNSUPPORTED_MEDIA_TYPE",
		"errorCode": 415,
		"reason": "Unsupported Media Type",
		"message": error.description default "Unsupported Media Type"
	},
	{"errorType": "MULE:EXPRESSION",
		"errorCode": 500,
		"reason": "Expression Error",
		"message": "Error while transformation"
	}
]