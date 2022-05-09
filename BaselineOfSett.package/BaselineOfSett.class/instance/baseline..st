baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'Rowan-Definitions';
				package: 'Rowan-Configurations';
				package: 'Rowan-GemStone-Definitions' with: [ spec requires: #('Rowan-Definitions') ];
				package: 'Rowan-GemStone-Specifications' with: [ spec requires: #('Rowan-Specifications') ];
				package: 'Rowan-Specifications';
				package: 'Rowan-Tonel' with: [ spec requires: #('Rowan-Configurations'  'Rowan-GemStone-Definitions' 'Rowan-GemStone-Specifications') ];
				package: 'Sett-Oracle-Proxy';
				package: 'StoreImporter'
					with: [ spec requires: #('Rowan-Tonel' 'Sett-Oracle-Proxy' 'PetitParser2' 'OSSubprocess' 'P3') ];
				package: 'SettExamples' with: [ spec requires: #('StoreImporter') ];
				package: 'StoreImporter-Tests'
					with: [ spec requires: #('StoreImporter' 'SettExamples') ].
			spec
				group: 'default' with: #('StoreImporter' 'SettExamples');
				group: 'Tests' with: #('StoreImporter-Tests').
			spec
				baseline: 'PetitParser2'
					with: [ spec
						repository: 'github://kursjan/petitparser2'
						];
				baseline: 'OSSubprocess'
					with: [ spec
"						className: #ConfigurationOfOSSubprocess;"
"						versionString: #stable;"
						repository: 'github://pharo-contributions/OSSubprocess:master/repository' ];
				baseline: 'P3' with: [ spec repository: 'github://svenvc/P3' ] ]
