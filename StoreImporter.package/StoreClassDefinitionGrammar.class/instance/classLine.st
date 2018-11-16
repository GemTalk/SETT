grammar
classLine
	^ #any asPParser starLazy flatten, $: asPParser flatten
		, #space asPParser flatten , #any asPParser starLazy flatten, #space asPParser starLazy .