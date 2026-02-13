"Version history of GBS Releases since the beginning of 2020"

```smalltalk
| source destination |
source := SettSourceConfiguration new
					dbHost: 'store';
					dbName: 'Store';
					dbUser: 'somebody';
					dbPassword: 'somepswd';
					patterns: #('GBS Releases');
					yourself.
destination := SettDestinationConfiguration new
					repositoryPathString: '/home/somebody/gitProjects/GBSReleases';
					rowanProjectName: 'GBSReleases';
					isNewRepository: true;
					debugLogging: true;
					yourself.

Sett
	readCodePublishedSince: (DateAndTime fromString: '2020-01-01')
	from: source
	andWriteTo: destination.
```
