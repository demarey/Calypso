tests
testClassEnumeration
	scope := ClyInstanceSideScope ofAll: {ClyClass1FromP1 classSide. ClyClass2FromP1}.
	
	scope classesDo: [ :each | result add: each ].
	
	self assert: result asArray equals: {ClyClass1FromP1. ClyClass2FromP1}