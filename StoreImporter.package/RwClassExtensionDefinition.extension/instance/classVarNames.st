*StoreImporter
classVarNames
  ^ self propertyAt: 'classvars' ifAbsent: [ #() ]