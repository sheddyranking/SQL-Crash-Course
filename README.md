# SQL-Crash-Course.-
Complete SQL Server Crash Course using Microsoft SQL Server. ### Schema.

> Database Schema Consist of other Dictionary objects such as tables and indices, it's provide a way to name a subset of tables and other dictionary objects within a database. 

> `SELECT DISTICT` returns only the Distinct records.

> Use `--` to comment out a queryLine 

> Use you use the `WHERE` statement and Conditional operator to `Filter` Records.

> When you add two columns or any mathematical operation, you can use `AS` statement to name the column where the values will be stored. such as `a+bc AS sampleName`.

> Don't Devide a column with a Column that has 0 input, will return an ERROR, Else return a `WHERE` Filter for columne > than 0. 

> QuerySelectionOrder is `FROM->WHERE->SELECT`.

> Filteringn a List, it is better to use `IN` operator and passed in the filter keys rather than using the `OR` operator. 

> Use Underscore to define a length of character, example, `A____`, this return a names with length of 5. 

> `'%'` to return characters that match `0` or `whole no. of characters`. example is `A%` return name's stating with letter A, `%A` return names ending with.

> `CONCAT` Function ignore any NULL Value.

> `WHERE` clause is replaced with `HAVING` if it's not a `SUBQUERY`. for example you have a `Group` of sum/Avg enteties, instead of using the `WHERE` use `HAVING` to find the aggregate filters. 

> Order of selection if this statement are to be used together.  `SELECT -> FROM -> WHERE -> GROUP -> HAVING -> ORDER BY`

> The `SQL` will then select in order of `FROM->WHERE->GROUP BY->HAVING->SELECT->ORDER BY`.

