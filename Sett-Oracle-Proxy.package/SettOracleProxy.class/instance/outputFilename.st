accessing
outputFilename
	^ '/dev/shm/sett-output-' , OSSVMProcess vmProcess pid asString , '.txt'