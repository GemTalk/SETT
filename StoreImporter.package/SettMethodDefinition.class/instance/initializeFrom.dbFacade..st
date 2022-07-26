initializing
initializeFrom: row dbFacade: aDatabaseFacade
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
		          ifFalse: [ 
			          isMetaString = 'F'
				          ifTrue: [ false ]
				          ifFalse: [ 
				             self
					             error: 'Unknown meta string: ' , isMetaString printString ] ].
	sourceCode := (SettStoreBlob
		               ofType: (row at: 5)
		               bytes: (row at: 6)
		               dbFacade: aDatabaseFacade) decoded.
	"There are various obfuscation schemes that yield non-compliant methodss for Tonel format."
	self updateForMissingSource