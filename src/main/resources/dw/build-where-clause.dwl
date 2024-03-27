%dw 2.0 
output applicaiton/java

var qparams = attributes.queryParams

---
/*
 * Build WHERE clause for the `SELECT * FROM shippings WHERE...` query.
 * 
 * Input attributes:
 * - qparams.name (String): User's name;
 * - qparams.match (["like", "equals"]): Matching attribute;
 * 
 * Returns: String.
 * */
if (not isBlank(qparams.name)) (
    qparams.match match {
        case "like" -> " WHERE userNAme LIKE '%" ++ qparams.name ++ "%'"
        else -> " WHERE userName = '" ++ qparams.name ++ "'"
    }
) else (
    ""
)
