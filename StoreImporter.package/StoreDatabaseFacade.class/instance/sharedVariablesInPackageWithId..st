reading
sharedVariablesInPackageWithId: packageId
	| query |
	query := '
SELECT 
	var.name,
	var.environmentstring,
	var.typestring
FROM
	tw_data rel
INNER JOIN tw_dataelement var
	ON rel.dataref = var.primarykey
WHERE
	rel.packageref = ' , packageId printString.
	^ self runQuery: query