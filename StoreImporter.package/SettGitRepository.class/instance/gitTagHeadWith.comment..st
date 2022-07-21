public
gitTagHeadWith: tagName comment: commentString
	"Tag the HEAD commit with tagName and comment.
	 Should be used immediately after committing, so that HEAD is known."

	^self gitTagWith: tagName comment: commentString committish: 'HEAD'
