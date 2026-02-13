"Extract everything from a specific Store repository.
 Modify namespace qualified class names so they could be compiled in GemStone/S."

```smalltalk`
| source destination |
source := SettSourceConfiguration new
						dbHost: 'store';
						dbName: 'Play';
						dbUser: 'somebody';
						dbPassword: 'somepswd';
						yourself.
destination := "SettDestinationConfiguration new"
					SettNamespaceMappingDestinationConfiguration new
						classNameDotReplacement: '_';	"Make it loadable into GemStone/S"
						namespaceMapping: SettNamespaceDirMap example1;
						repositoryPathString: '/home/somebody/gitProjects/Play1.0.1';
						rowanProjectName: 'Play1.0.1';
						"debugLogging: true;"
						separateGitRepos: true;
						yourself.

Sett
	readCodePublishedSince: (DateAndTime fromString: '1970-01-01')
	from: source
	andWriteTo: destination.
```
