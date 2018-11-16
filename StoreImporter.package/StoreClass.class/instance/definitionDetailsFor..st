properties-setting
definitionDetailsFor: classDefinitionFromStore
	classDefinition := StoreClassDefinitionConverter fromDefinition: classDefinitionFromStore.

	"className super: superClassName"
	self superclassName.
	"instvars: instvars"
	self instVarNames.
	"classinstvars: classinstvars "
	self classInstVars.

	"classvars: classvars "
	"self classVarsFromStore."

	"category: category "
	self category.

	"comment: comment "
	"self commentFromStore."

	"pools: pools "
	"??????"

	"type: type "
	self typeFromStore