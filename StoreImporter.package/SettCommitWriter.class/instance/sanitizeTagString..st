private
sanitizeTagString: aString
	"Sanitize the suggested string by replacing what appear to be illegal
	 characters / character sequences with underscore.
	 Deliberately NOT doing everything documented below.

	 Per git documentation,
		'The new tag name must pass all checks defined by git-check-ref-format[1].
		Some of these checks may restrict the characters allowed in a tag name.'
	 Some of those rules appear contradictory.
		1.	They can include slash / for hierarchical (directory) grouping, but no 
			slash-separated component can begin with a dot . or end with the sequence .lock.
		2.	They must contain at least one /. This enforces the presence of a category 
			like heads/, tags/ etc. but the actual names are not restricted. If the 
			--allow-onelevel option is used, this rule is waived.
		3.	They cannot have two consecutive dots .. anywhere.
		4.	They cannot have ASCII control characters (i.e. bytes whose values are lower 
			than \040, or \177 DEL), space, tilde ~, caret ^, or colon : anywhere.
		5.	They cannot have question-mark ?, asterisk *, or open bracket [ anywhere.
		6.	They cannot begin or end with a slash / or contain multiple consecutive slashes 
		7.	They cannot end with a dot ..
		8.	They cannot contain a sequence @{.
		9.	They cannot be the single character @.
		10.	They cannot contain a \.
	 "
	
	| disallowedCharacters input output |
	disallowedCharacters := (Character null to: Character space), '/\~^:?*[', { Character delete }.

	input := aString readStream.
	output := WriteStream on: String new.

	[ input atEnd ]
		whileFalse: [ 
			| character filtered |
			character := input next.
			filtered := (disallowedCharacters includes: character)
				ifTrue: [ $_ ]
				ifFalse: [ (character = $@ and: [ input peek = ${ ])
					ifTrue: [ 
						input next.
						$_ ]
					ifFalse: [ character ] ].
			output nextPut: filtered ].

	aString last = $.
		ifTrue: [ output back ].

	^output contents