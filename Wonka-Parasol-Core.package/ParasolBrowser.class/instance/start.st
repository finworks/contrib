control
start
	BPSmalltalkPlatform current ensureSeasideServerRunning.
	self startTestApp.
	driver := BPWebDriverManagerResource current
				driverWithCapabilities: self desiredDriverBrowserCapabilities
				on: self baseURL.
