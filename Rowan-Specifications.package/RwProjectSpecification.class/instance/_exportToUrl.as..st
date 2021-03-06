exporting
_exportToUrl: fileUrl as: fileName
  | url |
  url := RwUrl fromString: fileUrl.
  url schemeName = 'file'
    ifTrue: [ 
      CypressFileUtilities current
        writeStreamFor: fileName
        in: url pathForDirectory
        do: [ :stream | 
          | string |
          string := STON toStringPretty: self.
          stream nextPutAll: string.
          ^ self ] ].
  ^ nil	"otherwise a noop"
