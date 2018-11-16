reading
classDefinitionsInPackageWithId: primaryKey
	^ self
		runQuery:
			'
SELECT
	class.name,
	class.timestamp, 
	class.environmentstring, 
	class.superclass, 
	commentblob.blobtype,
	commentblob.blobdata,
	definitionblob.blobtype,
	definitionblob.blobdata
FROM
	tw_classrecord class
INNER JOIN tw_pkgclasses classes
	ON classes.classref = class.primarykey
INNER JOIN tw_blob definitionblob
	ON class.definitionid = definitionblob.primarykey
LEFT OUTER JOIN tw_blob commentblob
	ON class.commentid = commentblob.primarykey
WHERE
	classes.packageref = ' , primaryKey printString