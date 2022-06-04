*StoreImporter
key

	^ self propertyAt: 'sett_transient_className' ifAbsent: [ super key ]