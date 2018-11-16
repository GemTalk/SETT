accessing
findElement: elementNameString
	definition
		do: [ :aDefinitionArray | 
			aDefinitionArray first second = elementNameString
				ifTrue: [ elementNameString = 'superclass'
						ifTrue: [ ^ aDefinitionArray third fourth ]
						ifFalse: [ ^ aDefinitionArray third third ] ] ]