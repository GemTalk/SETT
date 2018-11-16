visiting
visitProjectLoadConfiguration: aProjectLoadConfiguration

	(visitedConfigurationNames includes: aProjectLoadConfiguration name)
		ifTrue: [ ^ self ].

	self _visited: aProjectLoadConfiguration. 

	definedGroupNames := aProjectLoadConfiguration definedGroupNames.
	groupNames := groupNames asSet.
	self groupNames copy do: [:groupName |
		"make sure that required groups are included in group names"
		groupNames addAll: (definedGroupNames at: groupName ifAbsent: [ #() ]) ].

	self _processConditionalPackageNames: aProjectLoadConfiguration.

	self _processConditionalPackageMapSpecs: aProjectLoadConfiguration.

	self configurationNames addAll: aProjectLoadConfiguration configurationNames.
	(self _configurations: self configurationBasePath, '/' forProject: aProjectLoadConfiguration projectName)
		do: [:config | config acceptNestedVisitor: self ].
