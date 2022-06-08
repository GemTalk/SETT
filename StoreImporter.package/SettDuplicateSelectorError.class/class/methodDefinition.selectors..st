signalling
methodDefinition: aMethodDefinition selectors: someSelectors

	^ self new
		  methodDefinition: aMethodDefinition;
		  existingSelectors: someSelectors;
		  yourself