accessing
defaultUseSessionMethodsForExtensions

	^ defaultUseSessionMethodsForExtensions
		ifNil: [ defaultUseSessionMethodsForExtensions := false ]