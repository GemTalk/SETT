*rowan-gemstone-definitions
gs_options: optionsArray

	(optionsArray isEmpty not)
		ifTrue: [ 
			self properties
				at: 'gs_options'
				put:
					(optionsArray collect: [ :each | each asString ]) asSortedCollection asArray ]