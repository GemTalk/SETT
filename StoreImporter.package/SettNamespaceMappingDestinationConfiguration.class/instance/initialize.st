initialization
initialize

	super initialize.
	includeNamespaceInPackageName := false.
	namespaceMapping := SettNamespaceDirMap new.

	tonelWriterClass := NamespaceMappingStoreToTonelWriter. 