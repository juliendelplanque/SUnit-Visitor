"
I define the interface of a SUnit tests visitor.

I am able to visit:
- TestCases
- TestCase classes
- TestSuites

A concrete visitor should use myself and override the required methods.
"
Trait {
	#name : #TSUnitVisitor,
	#category : 'SUnit-Visitor'
}

{ #category : #visiting }
TSUnitVisitor >> visitTestCase: aTestCase [
	"Defines the behaviour while visiting a TestCase.
	 This method must be overrided by users of this trait.
	"
	^ self explicitRequirement
]

{ #category : #visiting }
TSUnitVisitor >> visitTestCaseClass: aTestCaseClass [
	"Defines the behaviour while visiting a TestCase class.
	 The default implementation below is to build the suite from local test selectors and visit the suite built.
	"
	^ aTestCaseClass buildSuiteFromLocalSelectors
		acceptSUnitVisitor: self
]

{ #category : #visiting }
TSUnitVisitor >> visitTestSuite: aTestSuite [
	"Defines the behaviour while visiting a TestSuite.
	 The default implementation below is to iterate on the objects in #tests and return the results of the visit.
	"
	^ aTestSuite tests collect: [ :test |
		test acceptSUnitVisitor: self ]
]
