controlling
adoptForDialog
	(self areItemsLoaded and: [self itemCount < 10])
		ifTrue: [ self height: 100 ]
		ifFalse: [ self height: 300; enableFilterUsing: ClyRegexPattern new]