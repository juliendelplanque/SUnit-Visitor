# SUnit-Visitor
A package extending SUnit with an implementation of the visitor design pattern.

## Install

```
Metacello new
	baseline: 'SUnitVisitor';
	repository: 'github://juliendelplanque/SUnit-Visitor/src';
	load
```

## Version management 

This project use semantic versionning to define the releases. This mean that each stable release of the project will get associate a version number of the form `vX.Y.Z`. 

- **X** define the major version number
- **Y** define the minor version number 
- **Z** define the patch version number

When a release contains only bug fixes, the patch number increase. When the release contains new features backward compatibles, the minor version increase. When the release contains breaking changes, the major version increase. 

Thus, it should be safe to depend on a fixed major version and moving minor version of this project.
