Store to Tonel Writer transforms the source code from VisualWorks/Store formats to tonel.
This variant provides the original functionality of SETT 1.x, using namespaces to map classes to packages.
It can yield as many tonel packages as there are namespace mappings for a single VW package.
It is enabled by using the SettNamespaceMappingDestinationConfiguration subclass.

A namespace mapping packages all definitions in a namespace or child namespace to a specifc package with a suitably defined prefix. e.g. given a mapping for Root.A, all definitions in Root.A, Root.A.B, etc. will be put in the package associated with that mapping. The namespace mapping example maps everything to one of three possible packages. Root.Smalltalk goes to a package prefixed with wv_, while Root.GemStone goes to a package prefixed with gs_, and anything else under Root goes into a third package with no prefix. Only non-empty package mappings get written to real files.

Instance Variables:
	namespaceMap		<SettNamespaceDirMap>	namespace mapping rules
	packageMap		<SettPackageMap>		class and method definitions for packages corresponding to each namespace mapping
