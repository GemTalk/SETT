accessing
toSTON: anObject
    ^ (String streamContents: [ :stream |
        (RwTonelSTONWriter on: stream) nextPut: anObject ])
        withLineEndings: self newLine
