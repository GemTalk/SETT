public
gitInitAt: aDateAndTime
	"Initialize a new repository."

	self
		runGitWithArguments: {'init' . '--quiet'};
		runGitWithArguments:
			{'commit'.
			'--allow-empty'.
			'--author="SETT Store Import <importer@imported-from-store>"'.
			'-m'.
			('initial repo for store import created at: ' , DateAndTime now printString).
			'--date'.
			aDateAndTime printString}