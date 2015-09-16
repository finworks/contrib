initialize-release
initialize
	testComponent := BPValueHolder new.
	screenshotCounter := 1.
	initializeBlock := [ :component| ].
	configureTestAppBlock := [ :testApp| ]