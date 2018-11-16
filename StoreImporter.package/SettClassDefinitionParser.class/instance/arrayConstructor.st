grammar
arrayConstructor
	^ super arrayConstructor
		map: [ :ws1 :startArray :values :ws2 :endArray | 
			values
				ifNil: [ #() ]
				ifNotNil: [ | results |
					results := OrderedCollection with: values first.
					results addAll: values second.
					results asArray ] ]