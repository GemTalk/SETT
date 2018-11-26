# Overview

SETT (Store Export to Tonel Tools) is a set of tools to export Smalltalk code from Store and write into the Tonel file format used by Rowan and managed using Git. 

# Install and Run SETT

## Pre-requisites

1. Smalltalk: SETT has been tested on Pharo 6.1
2. Linux:  SETT has been tested on RedHat 6.x and Ubuntu 16.04.  It should work on other Linux distributions as well
3. Git: You need to have git installed on the machine that you're running SETT from.
4. Disk space: Ensure that you have sufficient disk space to hold the entire contents of your repository.
5. Store access: You must provide credentials for a Store user that has access to the repository to be imported.  Ideally, this user will be a read-only user.

## Installation for use on Postgres backed Store DB

```smalltalk
Metacello new 
  baseline: 'Sett';
  repository: 'github://GemTalk/SETT';
  load.
```

## Installation for use on Oracle backed Store DB

Work in progress


# Performing the import 

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
 userMapping: settUserMap ;
 namespaceMapping: settNamespaceMap.

Sett
  readCodePublishedSince: (DateAndTime fromString: 'Jan 1 2018')
  from: source
  andWriteTo: destination
```

