# SQL-Crash-Course.-
Complete SQL Server Crash Course using Microsoft SQL Server. 

Download adventureSample2019  DATABASE HERE:  https://docs.microsoft.com/en-us/sql/samples/adventureworks-install-configure?ranMID=43674&ranEAID=rl2xnKiLcHs&ranSiteID=rl2xnKiLcHs-ff4AEOnHME3xoBnpdsMcHA&epi=rl2xnKiLcHs-ff4AEOnHME3xoBnpdsMcHA&irgwc=1&OCID=AID2200057_aff_7795_1243925&tduid=(ir__wuhzgjt3cckf6xctdot6rgrj6n2xtbwc0j2dwlik00)(7795)(1243925)(rl2xnKiLcHs-ff4AEOnHME3xoBnpdsMcHA)()&irclickid=_wuhzgjt3cckf6xctdot6rgrj6n2xtbwc0j2dwlik00&view=sql-server-ver15&tabs=ssms

 
> Database Schema Consist of other Dictionary objects such as tables and indices, it's provide a way to name a subset of tables and other dictionary objects within a database. 

> `SELECT DISTICT` returns only the Distinct records.

> Use `--` to comment out a queryLine 

> Use you use the `WHERE` statement and Conditional operator to `Filter` Records.

> When you add two columns or any mathematical operation, you can use `AS` statement to name the column where the values will be stored. such as `a+bc AS sampleName`.

> Don't Devide a column with a Column that has 0 input, will return an ERROR, Else return a `WHERE` Filter for columne > than 0. 

> QuerySelectionOrder is `FROM->WHERE->SELECT`.

> Filtering a List, it is better to use `IN` operator and passed in the filter keys rather than using the `OR` operator. 

> Use Underscore to define a length of character, example, `A____`, this return a names with length of 5. 

> `'%'` to return characters that match `0` or `whole no. of characters`. example is `A%` return name's stating with letter A, `%A` return names ending with.

> `CONCAT` Function ignore any NULL Value.

> `WHERE` clause is replaced with `HAVING` if it's not a `SUBQUERY`. for example you have a `Group` of sum/Avg enteties, instead of using the `WHERE` use `HAVING` to find the aggregate filters. 

> Order of selection if this statement are to be used together.  `SELECT -> FROM -> WHERE -> GROUP -> HAVING -> ORDER BY`

> The `SQL` will then select in order of `FROM->WHERE->GROUP BY->HAVING->SELECT->ORDER BY`.

> `UNION` will remove `duplicates`, but `UNION ALL` will not remove duplicates, both does the same thing.


> Combining Multiple Rows we use `UNION`;

> Combining Multiple Columns we use the `JOIN/INNER JOIN` Operator. 

> `LEFT JOIN` (Returns Values From Right table if there's a Match and Return Null Valeus on the Right Table if there's no match).

> `RIGHT JOIN` (Returns Values From left table if there's a Match and Return Null Valeus on the left Table if there's no match).

#### NOTE:
> `LEFT JOIN ` is same as `LEFT OUTER JOIN`.

>`RIGHT JOIN` is the same as `RIGHT OUTER JOIN`.

> `FULL OUTER JOIN` (is a combination of `RIGHT JOIN` AND `LEFT JOIN`).




