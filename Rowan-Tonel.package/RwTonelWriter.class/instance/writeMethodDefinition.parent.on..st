private-writing
writeMethodDefinition: aMethodDefinition parent: aClassDef on: aStream
    | nl |
    nl := self newLine.
    self
        splitMethodSource: aMethodDefinition
        into: [ :methodDeclaration :methodBody | | fullClassName |
            fullClassName := self classNameFor: aMethodDefinition parent:  aClassDef.
            aStream
                << nl
                << (self methodDefinitionOf: aMethodDefinition) << nl
                << fullClassName << ' >> ' << methodDeclaration
                << ' [' << methodBody << nl << ']' << nl ]
