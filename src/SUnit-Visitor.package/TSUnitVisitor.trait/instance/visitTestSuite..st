visiting
visitTestSuite: aTestSuite
	"Defines the behaviour while visiting a TestSuite.
	 The default implementation below is to iterate on the objects in #tests and return the results of the visit.
	"
	^ aTestSuite tests collect: [ :test |
		test acceptSUnitVisitor: self ]