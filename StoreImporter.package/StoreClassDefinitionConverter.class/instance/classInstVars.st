accessing
classInstVars
	| results result |
	results := OrderedCollection new.
	result := self findElement: 'classInstanceVariableNames'.
	result
		ifNotNil: [ result first = $'
				ifFalse: [ result splitOn: ' ' do: [ :entry | results add: entry ].
					results remove: ''''.
					^ results ] ].
	^ results