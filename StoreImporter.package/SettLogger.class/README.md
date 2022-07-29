SettLogger logs messages to a log file named sett_<timestamp>.log in the current directory.

It supports normal messages which are always logged (via #log:) and detailed messages which are only logged when debugging is turned on (via #beDebugging and #debug:).

The consumer is responsible for initiating the opening of the log file and for closing it when finished with logging. Failure to close the stream will leave a dangling open file.


Instance Variables:
	logLevel			<Symbol>	currently only two levels supported #logging and #debugging
	logOutputSream	<Zinc File Stream>	being deliberately vague with the class of the stream

