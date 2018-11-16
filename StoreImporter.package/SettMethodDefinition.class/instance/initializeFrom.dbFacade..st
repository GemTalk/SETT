initializing
initializeFrom: row dbFacade: dbFacade
	"See DatabaseFacade >> methodDefinitionsInPackageWithId: for row ordering."

	"SELECT 
	method.classname,
	method.name, 
	method.protocolname, 
	method.metastring, 
	source.blobtype,
	source.blobdata
"

	| isMetaString |
	className := SettClassDefinitionParser
		parse: (row at: 1)
		startingAt: #fullyQualifiedClassName.
	selector := row at: 2.
	protocol := row at: 3.
	isMetaString := row at: 4.
	isMeta := isMetaString = 'T'
		ifTrue: [ true ]
		ifFalse: [ isMetaString = 'F'
				ifTrue: [ false ]
				ifFalse: [ self error: 'Unknown meta string' ] ].
	sourceCode := (SettStoreBlob ofType: (row at: 5) bytes: (row at: 6) dbFacade: dbFacade)
		decoded.
