action
updateVwNamespace: namespace for: classDefs
	classDefs do: [ :classDef | classDef propertyAt: 'vw_namespace' put: ('.' join: namespace)]