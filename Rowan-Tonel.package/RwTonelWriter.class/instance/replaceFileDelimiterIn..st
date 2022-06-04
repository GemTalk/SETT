private-writing
replaceFileDelimiterIn: aString

	^aString copyReplaceAll: (String with: File delimiter) with: '%'