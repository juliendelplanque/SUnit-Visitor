"
A SUnitTestsCounterTest is a test class for testing the behavior of SUnitTestsCounter
"
Class {
	#name : #SUnitTestsCounterTest,
	#superclass : #TestCase,
	#category : #'SUnit-Visitor-Tests'
}

{ #category : #tests }
SUnitTestsCounterTest >> testCountTestsInSUnitVisitorTestsPackage [
	| visitor |
	visitor := SUnitTestsCounter new.
	
	self assert: visitor count equals: 0.
	
	visitor visitRPackage: self class package.
	
	self assert: visitor count equals: self class testSelectors size
]
