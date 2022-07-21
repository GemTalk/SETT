public
gitTagWith: tagName comment: commentString committish: committitsh
	"Tag the specified commit with tagName and comment."

	self
		runGitWithArguments:
			{'tag'.
			'-m'.
			commentString.
			tagName.
			committitsh}