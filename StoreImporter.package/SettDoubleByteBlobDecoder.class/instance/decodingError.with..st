private
decodingError: patternString with: anObject

	self error: 'BLOB Decode Error - ' , (patternString expandMacrosWith: anObject)