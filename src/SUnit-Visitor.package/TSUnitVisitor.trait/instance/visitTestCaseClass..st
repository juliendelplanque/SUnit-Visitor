visiting
visitTestCaseClass: aTestCaseClass
	"Defines the behaviour while visiting a TestCase class.
	 The default implementation below is to build the suite from local test selectors and visit the suite built.
	"
	^ aTestCaseClass buildSuiteFromLocalSelectors
		acceptSUnitVisitor: self