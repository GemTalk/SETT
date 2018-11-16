accessing
instVarNames
	| results result |
	results := OrderedCollection new.
	result := self findElement: 'instanceVariableNames'.
	result
		ifNotNil: [ result first = $'
				ifFalse: [ result splitOn: ' ' do: [ :entry | results add: entry ].
					results remove: '''' ] ].
	^ results