accessing
category
	| results |
	results := self findElement: 'category'.
	(results last) = $' 
		ifTrue: [ results := results allButLast].
	^ results. 