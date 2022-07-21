private
doGitTag
	"Try to tag the commit. If we can, we can't/ No big deal.
	 It is possible for multiple pundles to use the same version
	 number (e.g. a product release), so using the version number
	 alone for a tag is not surefire."

	| tag |
	tag := self sanitizeTagString: storeCommit version.
	[ gitRepository gitTagHeadWith: tag comment: storeCommit commentStringForGit ]
		on: Error
		do: [ :ex | 
			| newTag |
			logger log:
				ex messageText , '   Retrying with pundle name appended.'.
			newTag := tag , '-' , (self sanitizeTagString: storeCommit pundleVersion pundleName).
			[ gitRepository gitTagHeadWith: newTag comment: storeCommit commentStringForGit ]
				on: Error
				do: [ :ex2 | 
					logger log: ex2 messageText , '   Retry with ' , newTag
						, ' failed. No tag added to commit.' ] ]