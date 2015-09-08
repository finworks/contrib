setup
configureTestApp: testApp
	"BPRemoteWebDriver serverPort: 44187"

	super configureTestApp: testApp.
	testApp addFilterFirst: TransactionBoundaryFilter new