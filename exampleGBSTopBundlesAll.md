"Export the recently published versions of the top GBS bundles and all contained pundles.
 (One git repository for each top-level bundle's history.)"

```smalltalk
| source destination |
source := SettSourceConfiguration new
					dbHost: 'store';
					dbName: 'Store';
					dbUser: 'somebody';
					dbPassword: 'somepswd';
					"patterns: #('GBS *');"
					yourself.
destination := SettDestinationConfiguration new
					repositoryPathString: '/home/somebody/gitProjects/GBSAllMulti';
					rowanProjectName: 'GBSAllMulti';
					isNewRepository: true;
					"debugLogging: true;"
					separateGitRepos: true;
					yourself.

Sett
	readCodePublishedSince: (DateAndTime fromString: '2020-01-01')
	from: source
	andWriteTo: destination.
```
