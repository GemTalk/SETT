reading
infoForClassRecord: classId
	| query queryResults |
	query := 'SELECT 
		name, 
		timestamp, 
		environmentstring, 
		superclass, 
		definitionid, 
		commentid  
		FROM tw_classrecord 
		WHERE primarykey = ' , classId printString.
	queryResults := self runQuery: query.
	queryResults size = 1
		ifFalse: [ self error: 'Expected exactly one class record.' ].
	^ queryResults first