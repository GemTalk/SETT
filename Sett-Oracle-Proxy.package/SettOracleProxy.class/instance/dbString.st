run
dbString
	"SYSTEM/${PASS}@tribble.gemtalksystems.com/XE"
	
	^ dbConnection dbHost , ':', dbConnection dbPort, '/', dbConnection dbListener.