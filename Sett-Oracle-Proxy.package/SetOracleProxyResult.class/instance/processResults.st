accessing
processResults
	"Decode base64 encoded data used to transfer bytes from the SOP tool."

	| newResults newRow notFound |
	newResults := OrderedCollection new.
	(results at: 'data')
		do: [ :row | 
			newRow := OrderedCollection new.
			row
				do: [ :column | 
					notFound := true.
					column isString
						ifTrue: [ (column findString: self encodingKeyword) > 0
								ifTrue: [ newRow add: (column splitOn: self encodingKeyword) second base64Decoded.
									
									notFound := false ] ].
					notFound
						ifTrue: [ newRow add: column ] ].
			newResults add: newRow ].
	results at: 'data' put: newResults