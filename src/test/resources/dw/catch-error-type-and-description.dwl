%dw 2.0
output application/java
---
/*
 * Catch type and description of thrown error.
 * So it can be used in Validation scope of the running MUnit test.
 * 
 * Input attributes:
 * - thrownErrorType (String): Name space and identifier of the thrown error ("APP:NOT_FOUND" i.e.);
 * - thrownErrorDescription (String): Description of the thrown error ("Shipping was not found!" i.e.);
 * 
 * Returns:
 * - Java object with "thrownErrorType" and "thrownErrorDescription" attributes.
 * */
{
	thrownErrorType: error.errorType.namespace ++ ":" ++ error.errorType.identifier default "",
	thrownErrorDescription: error.description default ""
}
