grammar
gemstoneConstraintsLine
	^ super gemstoneConstraintsLine
		map:
			[ :ws1 :startArray :colon :values  | 'gs_constraints' -> values. ]