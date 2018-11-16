*rowan-gemstone-specifications
platformSpec

   ^platformSpec ifNil: [ 
		platformSpec := Dictionary new
			at: 'gemstone' put: RwGemStoneSpecification new;
			yourself ].
