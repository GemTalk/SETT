reading
classesAssociatedWithPackage: aPackagePrimaryKey
	| query |
	query := 'SELECT classref, metaclassref FROM tw_pkgclasses where packageref = '
		, aPackagePrimaryKey printString.
	^ self runQuery: query