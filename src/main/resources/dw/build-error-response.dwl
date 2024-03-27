%dw 2.0
output application/json

// Takes only error description. Discard logger part (if present).
var errorDesc = (error.description splitBy("?"))[0]
---
{
	message: if (errorDesc != null) (errorDesc) else "Server error!",
	correlationId: correlationId default "unknown"
}
