updating
retryProblematicSharedVariables
	"One or more shared variable declarations referred to a namespace
	 other than one of the classes defined in this package.
	 See if any of these can be resolved as an extension of another package,
	 or as variables in a SharedPool subclass, or something else.
	 (refer to the comment in #addSharedVariable: for details)"

	| stillUnresolved |
	self hasUnfinishedBusiness ifFalse: [ ^ self ].

	logger debug: self printString , ' retrying previously unresolved shared variables'.
	stillUnresolved := OrderedCollection new.
	problematicSharedVariables
		doWithIndex: [ :each :index |
			((self tryClassExtensionForSharedVariable: each) 
				 or: [(self trySharedPoolClassForSharedVariable: each ) 
				 or: [(self tryFictionalClassExtensionForSharedVariable: each )]])
					ifFalse: [ 
						stillUnresolved add: each.
						logger log: 'Warning!: Class not found for Shared Variable '
							, each signature , '. Shared Variable remains unresolved.' ] ].

	"Report any remaining unresolved shared variables, so that it is clear."
	problematicSharedVariables := stillUnresolved.
	self hasUnfinishedBusiness
		ifTrue: [ 
			logger log: problematicSharedVariables size printString
				, ' unresolved shared variables remain in ' , self printString.
			problematicSharedVariables doWithIndex: [ :each :index | 
				logger log: '	' , index printString , '.	' , each signature ] ]
		ifFalse: [ 
			logger log: self printString
				, ' successfully resolved all shared variable declarations' ]