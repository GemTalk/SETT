reading
methodDefinitionsInPackageWithId: primaryKey
	^ self
		runQuery:
			'
SELECT 
	method.classname,
	method.name, 
	method.protocolname, 
	method.metastring, 
	source.blobtype,
	source.blobdata
FROM 
	tw_method method
INNER JOIN tw_methods methPkg
	ON method.primarykey = methPkg.methodref
INNER JOIN tw_blob source
	ON method.sourcecodeid = source.primarykey
WHERE 
	methPkg.packageref = ' , primaryKey printString