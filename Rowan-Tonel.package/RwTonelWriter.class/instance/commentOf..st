private-writing
commentOf: aClassDefinition
    ^ ((aClassDefinition propertyAt: 'comment')
        copyReplaceAll: '"'
        with: '""')
        withLineEndings: self newLine
