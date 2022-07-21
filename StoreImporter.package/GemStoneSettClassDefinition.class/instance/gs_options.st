accessing
gs_options
	"This method should determine what options have been defined by the store class representation"

	| options |
	options := Set new.
	properties
		keysDo: [ :property | 
			| value |
			value := self propertyAt: property.
			value = 'true'
				ifTrue: [ | gsOption |
					gsOption := SettGsClassOptions getOptionMappingFor: property.
					gsOption ifNotNil: [ options add: gsOption ] ] ].
	^ options asSortedCollection 