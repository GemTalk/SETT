initializing
updateForMissingSource
	"If there is no source code, generate new source for the method
	 explaining the lack."

	| retrievedSource keywords needsArguments stream |
	"   SilverMark TestMentor       VisualWorks"
	(#( '''this source is hidden''' nil ) includes: sourceCode)
		ifFalse: [ ^ self ].
	retrievedSource := sourceCode ifNil: [ 'No source code is available' ].
	keywords := self selector keywords.
	stream := WriteStream on: String new.
	needsArguments := keywords size > 1
							or: [ keywords first last = $:
							or: [ keywords first allSatisfy: [ :each | each isSpecial ] ] ].
	needsArguments
		ifTrue: [ 
			keywords doWithIndex: [ :each :index | 
				stream
					nextPutAll: each;
					nextPutAll: ' arg';
					print: index;
					space ] ]
		ifFalse: [ stream nextPutAll: keywords first ].
	stream
		cr;
		tab;
		nextPut: $";
		nextPutAll: retrievedSource;
		nextPut: $".
	sourceCode := stream contents.