as yet unclassified
ajaxUpdateJs
	^'
	function initializeAjaxQueue() { 
		var ajaxqueue = {
			cancelled: false,
			cancel: function() { this.cancelled = true; },
			schedule: function(f, element) {  
				var _this = this;
				setTimeout(function(){ if (!_this.cancelled) { f.call(element) } }, 0);
			}
		};
		jQuery("body")
			.data("ajaxqueue", ajaxqueue)
			.on("mousedown", ".callback", ajaxqueue.cancel);
		jQuery("form")
			.submit(ajaxqueue.cancel);
    
	};

      jQuery().ready(initializeAjaxQueue);
	'