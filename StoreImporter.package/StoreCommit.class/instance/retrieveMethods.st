private
retrieveMethods
	self
		allPackageVersionsDo:
			[ :package | package classes do: [ :class | self methodsAndSourceFor: class in: package ] ]