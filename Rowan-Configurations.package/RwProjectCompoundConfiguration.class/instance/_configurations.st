private
_configurations

	| spec urlBase |
	self configurationNames isEmpty ifTrue: [ ^ #() ].
	spec := self _specification.
	urlBase := 'file:' , spec repositoryRootPath , '/' , spec configsPath , '/'.
	^ self configurationNames
		collect: [ :configName | 
			| url |
			url := urlBase , configName , '.ston'.
			(RwAbstractProjectConfiguration fromUrl: url)
				projectName: self projectName;
				yourself ]
