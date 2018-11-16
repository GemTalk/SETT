public
gitCommitWithDate: aDateAndTime author: authorString comment: commentString
	"Commit the current index as if it had been done by authorString at aDateAndTime."

	self
		runGitWithArguments:
			{'commit'.
			('--date=' , aDateAndTime printString).
			('--author="' , authorString , '"').
			'-m'.
			commentString}