navigation
spawnFullBrowser
	super spawnFullBrowser.
	
	self itemCount = 1 ifTrue: [ 
		[self close] on: ProvideAnswerNotification do: [:notification | 
			"If we have ditry tabs we are not able close it"
			notification resume: false]
	].