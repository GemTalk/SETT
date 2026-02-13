"Extract the complete history of everything to do with GemBuilder (for Smalltalk)
 (Multiple git repositories, one for every isolated history, including 'orphaned' pundles)"

```smalltalk
| source destination |
source := SettSourceConfiguration new
					dbHost: 'store';
					dbName: 'Store';
					dbUser: 'someuser';
					dbPassword: 'somepswd';
					patterns: #('GB*');
					yourself.
destination := SettDestinationConfiguration new
					repositoryPathString: '/home/somebody/gitProjects/AllGBSHistoryMulti';
					rowanProjectName: 'AllGBSHistoryMulti';
					isNewRepository: true;
					"debugLogging: true;"
					separateGitRepos: true;
					yourself.

Sett
	readCodePublishedSince: (DateAndTime fromString: '1970-01-01')
	from: source
	andWriteTo: destination.
```
