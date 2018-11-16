*rowan-gemstone-definitions
compareAgainstBaseForcingNewClassVersion: aDefinition

	"all unchanged and unremoved methods need to be applied to the patch"

	| modification instanceMethodsModification classMethodsModification |
	modification := self _modificationForcingNewClassVersion
		before: aDefinition
		after: self.
	modification
		propertiesModification: (self comparePropertiesAgainstBase: aDefinition).
	instanceMethodsModification := self _methodsModificationClass
		extendedClassName: self key.
	classMethodsModification := self _methodsModificationClass
		extendedClassName: self key.
	self
		compareDictionary: instanceMethodDefinitions
		againstBaseDictionaryForNewClassVersion: aDefinition instanceMethodDefinitions
		into: instanceMethodsModification
		elementClass: RwMethodDefinition
		isMeta: false.
	self
		compareDictionary: classMethodDefinitions
		againstBaseDictionaryForNewClassVersion: aDefinition classMethodDefinitions
		into: classMethodsModification
		elementClass: RwMethodDefinition
		isMeta: true.
	modification
		instanceMethodsModification: instanceMethodsModification;
		classMethodsModification: classMethodsModification.
	^ modification
