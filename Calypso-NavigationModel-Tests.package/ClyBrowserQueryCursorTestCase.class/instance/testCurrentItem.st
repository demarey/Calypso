tests
testCurrentItem
	
	| item |
	item := cursor currentItem.
	
	self assert: item class equals: ClyBrowserItem.
	self assert: item isPrepared.
	self assert: item position equals: 1.