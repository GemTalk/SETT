A resumable Error which is expected to be signalled with the method definition in question and the set of selectors already known.

SETT expects there to be only one method definition for a given class and selector. Unfortunately, VisualWorks seems to allow there to be multiple. I don't how or why. But when extracting source from the Store repository, we want to extract all the source. (We cannot determine which of the duplicates would be the real one.)

If resumed, it is expected that the method definion has been modified so the attempted add can be retried. 

I can be annotated with the package version which holds these definitions.


Public API and Key Messages

- (class) signalFor: aMethodDefinition selectors: someSelectors
  Create the exception and signals it.

- methodDefinition
  The problematic method definition.

- existingSelectors
  The set of selectors that have already been added to the class.

- packageVersion: aPackageVersion
  The setter to annotate which package version the method definition comes from.

- packageVersion
  The accessor for thee package version.
