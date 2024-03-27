%dw 2.0 
output applicaiton/java

var params = attributes.queryParams

---
/*
 * Build WHERE clause that's gonna be used in the SELECT query.
 * 
 * Input attributes:
 * - params.name (String): User's name;
 * - params.match (["like", "equals"]): Matching attribute;
 * 
 * Returns: String or null.
 * */
if (not isBlank(params.name)) (
    params.match match {
        case "like" -> " WHERE userNAme LIKE '%" ++ params.name ++ "%';"
        else -> " WHERE userName = '" ++ params.name ++ "';"
    }
) else (
    ""
)
