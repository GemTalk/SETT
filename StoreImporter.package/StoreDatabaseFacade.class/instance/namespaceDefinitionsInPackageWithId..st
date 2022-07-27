reading
namespaceDefinitionsInPackageWithId: primaryKey

	^ self
		runQuery:
			'
SELECT
	namespace.name,
	namespace.environmentstring,
	source.blobtype,
	source.blobdata
FROM
	tw_namespacerecord namespace
INNER JOIN tw_pkgnamespaces nsPkg 
	ON nsPkg.namespaceref = namespace.primarykey
INNER JOIN tw_blob source
	ON namespace.definitionid = source.primarykey
WHERE
	packageref = ' , primaryKey printString