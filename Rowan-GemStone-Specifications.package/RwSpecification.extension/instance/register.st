*rowan-gemstone-specifications
register

	Rowan image 
		loadedProjectNamed: self specName
		ifAbsent: [
			| newLoadedProject |
			newLoadedProject := RwGsLoadedSymbolDictProject newForLoadSpecification: self.
			Rowan image addLoadedProject: newLoadedProject ]
