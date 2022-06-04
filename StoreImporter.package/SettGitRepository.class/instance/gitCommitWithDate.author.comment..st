public
gitCommitWithDate: aDateAndTime author: authorString comment: commentString
	"Commit the current index as if it had been done by authorString at aDateAndTime.
	 Allow empty commits, since Store reblessing creates that scenario."
	<todo: 'There should not be empty commits, We probably need to capture bundle config info'>

	self
		runGitWithArguments:
			{'commit'.
			'--allow-empty'.
			('--date=' , aDateAndTime printString).
			('--author="' , authorString , '"').
			'-m'.
			commentString}