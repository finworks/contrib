control
start
	BPPlatform current ensureSeasideServerRunning.
	self startTestApp.
	driver := BPWebDriverManagerResource current
				driverWithCapabilities: self desiredDriverBrowserCapabilities
				on: self baseURL.
