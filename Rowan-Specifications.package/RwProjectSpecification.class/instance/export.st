exporting
export

	| url exportUrl exportPath |
	self repositoryUrl
		ifNil: [ self error: 'exportToUrl: must be used if repositoryUrl has not been set' ].
	url := RwUrl fromString: self repositoryUrl.
	exportPath := self repositoryRootPath , '/' , self specsPath , '/'.
	CypressFileUtilities current ensureDirectoryExists: exportPath.
	exportUrl := 'file:' , exportPath.
	^ self exportToUrl: exportUrl
