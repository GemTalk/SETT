private
url
	"'psql://importer:swordfish@svn:5432/Store'"
	|fullUrl|
	fullUrl := 'psql://'.
	fullUrl := fullUrl, self dbUser, ':'.
	fullUrl := fullUrl, self dbPassword, '@'.
	fullUrl := fullUrl, self dbHost, ':'.
	fullUrl := fullUrl, self dbPort, '/'.
	fullUrl := fullUrl, self dbName.
	^fullUrl 
	
	
