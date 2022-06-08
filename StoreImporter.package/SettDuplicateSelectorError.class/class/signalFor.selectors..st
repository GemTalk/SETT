signalling
signalFor: aMethodDefinition selectors: someSelectors

	^ (self methodDefinition: aMethodDefinition selectors: someSelectors)
		  signal