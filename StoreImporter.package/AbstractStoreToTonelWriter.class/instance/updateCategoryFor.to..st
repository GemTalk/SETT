action
updateCategoryFor: classDefs to: rwPackageName
	"In order to ensure the resultant class definition is loadable by Rowan, ensure that 
	 the category matches the rowan package name."

	classDefs
		do: [ :classDef | 
			| originalCategory |
			originalCategory := classDef category.
			originalCategory
				ifNotEmpty: [ rwPackageName = originalCategory
						ifFalse: [ classDef propertyAt: 'originalCategory' put: originalCategory ] ].
			classDef propertyAt: 'category' put: rwPackageName ]