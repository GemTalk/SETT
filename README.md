# Overview

SETT (Store Export to Tonel Tools) is a set of tools to export Smalltalk code from Store and write into the Tonel file format used by Rowan and managed using Git.

Version 2.x of SETT can be used to extract multiple disconnected bundles or packages into multiple git repositories. As with version 1.x, it can be used to extract the complete history of a specific bundle or package into a single git repository.
The term disconnected means any package or bundle version that is not contained in another bundle gets extracted to its own git repository with all its versions or, in the case of a bundle, with all its versions and all the bundles and packages in each version.

A large project, such as the source code for GemBuilder for Smalltalk (a.k.a GBS) can take multiple or even many hours. GBS took on the order of 24 hours to export.


# Install and Run SETT

## Pre-requisites

1. Smalltalk: SETT 2.x has been tested on Pharo 13.
2. Linux:  SETT has been tested on Ubuntu 22.04.  It should work on other Linux distributions as well
3. Git: You need to have git installed on the machine that you're running SETT from.
4. Disk space: Ensure that you have sufficient disk space to hold the entire contents of your repository.
5. Store access: You must provide credentials for a Store user that has access to the repository to be exported.  Ideally, this user will be a read-only user.

## Installation for use on Postgres backed Store DB

```smalltalk
Metacello new 
  baseline: 'Sett';
  repository: 'github://GemTalk/SETT';
  load.
```

You can also load from a locally cloned repository.
e.g.
```smalltalk
Metacello new 
  baseline: 'Sett';
  repository: 'filetree:/home/somebody/gitProjects/SETT';
  load.
```

## Installation for use on Oracle backed Store DB

While there is a class specific for reading from an Oracle-based Store database, it is a work in progress and not known to work.
Set the Source Configuration dbType to 'oracle'.

## Installation for use with PostgrSQL backed Store DB

SETT development was done against a PostgreSQL Store DB. It is the most tested and is the default in the absence of specifying an oracle dbType.

The secltion of database facade is determined in Sett>>#initializeDatabaseFacade.
There is a facade class for Sqlite3, but it should be considered incomplete and untested.


# Caveats

In Pharo 10, DateAndTime would parse a typical Unix Date and time stamp string, such as 'Jan 1 1970'. However, Pharo 13 requires Date and Time to be specified using the ISO date format for date alone and as much of the time portion of a Date and time specification.


Override methods are not currently handled. SETT tries to extract all methods from Store. When it finds a duplicate selector, it rewrites the method prefixing the selector with DUPLICATE_, a collision avoiding number, and another underscore. e.g. DUPLICATE_1_selector

SETT extracts some VW specific aspects using VW-specific properties. An example is class namespaces are preserved in the extract.

SETT extracts three known kinds of shared variables:
1. Shared variables in a class namespace (mapped to class variables)
   1a. Shared variables in a package that defines the corresponding class are added to the class definition.
   1b. Shared variables in a package that doesn't define the corresponding class are added to the class
       via a non-standard tonel technique of a class variable in a class extension.
2. Shared variables in a non-class namespace (mapped to pool dictionaries)
   TO DO: currently, any non-class namespace other than Root and Root.Smalltalk will be mapped to a SharedPool
      subclass definition with the name of the namespace. SETT should only do this for namespaces actually declared
      in the extracted packages. All shared variables in undeclared namespaces should be treated as stray shared variables.
3. Stray shared variables (added as an extension to a fictional class with the namespace's name, similar to 1b above)

The length of time to extract from the Store repository can be long. It depends on how many package versions are selected from the specified time range and the size of the code in them. Extracting the entire GBS Store repository extracted 5300 package versions and took half a day to run.

If there is more than one top-level(*) pundle in the Store repository, the versions are all sorted chronologically and written out in order. The indivdual projects in the Store repository are not very accessible, since one commit can be for one project and the next commit for a different one. The git log allows one to find the version one wishes, but not so much to explore what was extracted when the list of projects is not already known.

[(*) A top-level pundle is defined as any version of a package or bundle which is not contained in a published version of some other bundle. Consider a Store database with a bundle named Project, comprised of packages A, B, and C. If SETT were to only extract the published versions of Project, it would thereby ignore any published versions of A, B, or C which were not published into a version of Project. So, if SETT finds any version of A, B, or C not contained in a version of Project, it extracts all versions of that package (or bundle). 

The Destination Configuration attribute #separateGitRepos comes in handy here since it will extract all versions of each top-level pundle into a sub-directory with the corresponding name. In this example, there would be <rowanProjectName>/Project, <rowanProjectName>/A, <rowanProjectName>/B, and <rowanProjectName>/C directorys, each containing all published versions of their respective pundle.

In the absence of separate repos, all versions of each are still extracted, but they are interleaved chronologically with all other pundle versions in one repo. This makes it difficult find specific versions of the nested pundles. Extracting to a single repo is best for extracting exactly one top-level pundle name.]

Store repositories often hold multiple projects, so extracting all of them can be messy and time consuming. Messy, since the git history interleaves the commits from different projects according to when each was checked in to Store. You can specify patterns in the source configuration to restrict the top-level pundles to those that correspond to a single project. e.g. #('GBS*') matches everything for GBS. The default pattern set is #("*'), matching everything.


# Performing the export 

The following provides examples for using SETT to export from a Postgres based Store database.  

1. Define a class for the source Store repository. Create a subclass of _SettSourceConfiguration_ to define the login parameters for the Store repository. You may use the class _SettExampleSourceConfiguration_ as an example:
    ```smalltalk
    SettSourceConfiguration subclass: #SettExampleSourceConfiguration
      instanceVariableNames: ''
      classVariableNames: ''
      package: 'SettExamples'
    ```
2. Define an initialize method containing source information. Define an instance method on your new
*SourceConfiguration class, similar to the following:
    ```smalltalk
    SettExampleSourceConfiguration >> initialize.
    initialize
      super initialize.
      dbHost := 'db.example.com'.
      dbName := 'databaseName'.
      dbUser := 'aReadOnlyUser'.
      dbPassword := 'aPassword'.
    ```
    These provide the default values for an instance of your class, overriding the superclass settings. Later, in your do-it statement, you may use setter methods to override these settings.

3. Define a class for the destination Git repository.  Create a subclass of _SettDestinationConfiguration_ to define the directory location and other parameters for the destination Git repository. You may use the class
_SettExampleDestinationConfiguration_ as an example:
    ```smalltalk
    SettDestinationConfiguration subclass: #SettExampleDestinationConfiguration
      instanceVariableNames: ''
      classVariableNames: ''
      package: 'SettExamples'
    ```
4. Define an initialize method containing destination information. Define an instance method on your new _DestinationConfiguration_ class, similar to _SettExampleDestinationConfiguration >> initialize_.
    ```smalltalk
    initialize
      super initialize.
      repositoryPathString := './exampleOutput'
      rowanProjectName := 'StoreExport'.
    ```
    The **repositoryPathString** should be set to the directory in which the output Git repository will be written, holding the converted Store data. This will eventually be the Rowan project directory, and you may wish to use the same name for this and for rowanProjectName. rowanProjectName should be set to the name that will be used for your Rowan Project; this is used to construct the Rowan specification file. You may also set the **branchName**, which defaults to '**fromStore**'.

5. Write code and execute to perform the export from Store to git. **Before beginning, you should save your image**. To perform the migration, you will define and execute a do-it in a Pharo workspace.  By default, this automatically creates a new Git repository. The export includes a starting DateAndTime, which you may set to a recent date for small tests, or use a very early time for a complete load operation. This date is used for the initial git commit in a new repository.  A very simple example of a running SETT is below.  

6. Additional SETT configuration options are available and documented in the [wiki](https://github.com/GemTalk/SETT/wiki).

7. As SETT runs, it writes a log file into the directory from which the image was run. The log file shows you what was found for extract and each package version it writes out, as well as warning messages. The file name is sett_<timestamp>.log.


## Simple example
```smalltalk
|source destination |
source := SettExampleSourceConfiguration new.
destination := SettExampleDestinationConfiguration new.

source
 dbHost: 'db.example.com';
 dbName: 'databaseName';
 dbUser: 'aReadOnlyUser';
 dbPassword: 'aPassword';

dest
 repositoryPathString: './StoreExport';
 rowanProjectName: 'StoreExport';
 userMapping: settUserMap ;	"An instance of SettUserMap. See the example methods on its class size."
 namespaceMapping: settNamespaceMap.

Sett
  readCodePublishedSince: (DateAndTime fromString: '2018-01-01')
  from: source
  andWriteTo: destination
```


# Pharo Version Compatibility

SETT V1.x was first developed in Pharo 6. 
V2.0 was developed and tested in Pharo 10.
V2.0 was also tested in Pharo 13.

Pharo 13 has some differences beyond the DateAndTime fromString: anomaly mentioned above. (The format of the string is different.)
In addition, when you load SETT in Pharo 13, you will notice that the Petit Parser 2 project shows uncommitted changes.
Some time between Pharo 10 and 13, the RBProgramNode was renamed to OCProgramNode. For compatibilty, the association 
for RBProgramNode was left in place but pointing to the new OCProgramNode. This allows Petit Parser 2 to load without a problem.
However, Pharo shows the consequence of this renaming as a change in the petitparser2 repository.
Our belief is that the maintainers of Petit Parser 2 have chosen not to update to address this likely because it 
would limit Petit Parser 2's compatibility with older Pharo versions.

Two projects that SETT depends on show Detached HEAD because SETT relis on specific versions of them.
While there might be never versions of those projects, SETT works properly as it is.

