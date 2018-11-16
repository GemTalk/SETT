private-query
methodsAssociatedWith: aStoreClassFullName in: packagePrimaryKey
	| query |
	query := '
	SELECT 
		method.name, 
		method.protocolname, 
		method.metastring, 
		method.sourcecodeid
	FROM tw_method method
	INNER JOIN tw_methods methPkg
		ON method.primarykey = methPkg.methodref
	WHERE packageref = ' , packagePrimaryKey printString , ' and (method.classname = '''
		, aStoreClassFullName , ''' or method.classname = ''' , aStoreClassFullName
		, ' class'' )'.
	^ self runQuery: query