initialization
initialize
	GsAttributes := Dictionary new.
	
	"Current"
	GsAttributes at: 'dbTransient' put: 'dbTransient'. 
	GsAttributes at: 'disallowGciStore' put: 'disallowGciStore'. 
	GsAttributes at: 'instancesInvariant' put: 'instancesInvariant'. 
	GsAttributes at: 'instancesNonPersistent' put: 'instancesNonPersistent'. 
	GsAttributes at: 'modifiable' put: 'modifiable'. 
	GsAttributes at: 'subclassesDisallowed' put: 'subclassesDisallowed'. 
	GsAttributes at: 'traverseByCallback' put: 'traverseByCallback'. 
	GsAttributes at: 'logCreation' put: 'logCreation'. 
   
	"Other mappings"
	GsAttributes at: 'isModifiable' put: 'modifiable'. "Class side"
	GsAttributes at: 'isInvariant' put: 'instancesInvariant'. "instance "
	GsAttributes at: 'instancesInvariant' put: 'instancesInvariant'. 
