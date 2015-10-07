hooks
childComponent
	^ domainObject asComponent
		addValidatedForm:
				{((ValidatedAction new
						with: [ :component |  ];
						yourself) -> 'Save').
					((ValidatedAction new
						with: [ :component | domainObject submit ];
						yourself) -> 'Submit')};
		addDecoration: AjaxGroup new;
		yourself