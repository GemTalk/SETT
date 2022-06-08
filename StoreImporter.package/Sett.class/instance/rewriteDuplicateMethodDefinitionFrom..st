private
rewriteDuplicateMethodDefinitionFrom: aSettDuplicateSelectorError
	"When we encounter a duplicate method definition, we rewrite it with a distinctive selector
	 so that we capture all the code from Store and let the reader determine which implementation
	 is the correct one."

	| methodDefinition selectors candidate |
	logger log: aSettDuplicateSelectorError description.
	methodDefinition := aSettDuplicateSelectorError methodDefinition.
	selectors := aSettDuplicateSelectorError existingSelectors.
	"If there should happen to be more than 1,000 implementors, fail so a developer can study the beast."
	(1 to: 999) detect: [ :index | 
		candidate := 'DUPLICATE_' , index printString , '_'.
		(selectors includes: candidate , methodDefinition selector) not ].
	methodDefinition prefixSelectorWith: candidate.
	logger log:
		'Duplicate selector renamed to: ' , methodDefinition selector