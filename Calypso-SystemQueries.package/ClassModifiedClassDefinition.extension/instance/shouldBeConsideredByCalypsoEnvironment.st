*Calypso-SystemQueries
shouldBeConsideredByCalypsoEnvironment
	"We dont want this event at all because when it happen system has no information about new class
	and both globals and packages are referenced old object.
	So instead ClassModificationApplied is used"
	^false