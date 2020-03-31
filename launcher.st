StartupPreferencesLoader default executeAtomicItems: {			

	StartupAction
		name: 'Update theme.'
		code: [ 
			PharoDarkTheme beCurrent
		]
		runOnce: true.

	StartupAction
		name: 'Update color'
		code: [ 
			PhLImagesPresenter compile: 'readableDateFor: aDateAndTime
	| text delta |
	text := PhLTimeUntilNowStrategy displayStringOf: aDateAndTime.
	text makeAllColor: (Color fromHexString: ''90A4AE'').
	delta := DateAndTime now - aDateAndTime.
	delta days < 31
		ifTrue: [ text makeAllColor: (Color fromHexString: ''FF9800'') ].
	delta days < 8
		ifTrue: [ text makeAllColor: (Color fromHexString: ''4CAF50'') ].
	delta days < 3
		ifTrue: [ text makeAllColor: (Color fromHexString: ''009688'') ].
	^ text asMorph lock'

		]
		runOnce: true.

	StartupAction
		name: 'Update default sorting'
		code: [ 
			PhLImagesPresenter compile: 'initialize
	super initialize.
	imageTable sortingBlock: #name ascending'

		]
		runOnce: true.
}