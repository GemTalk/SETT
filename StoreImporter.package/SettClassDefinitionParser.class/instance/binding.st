grammar
binding
	^ super binding map: [ :ws :lbrace :fullName :rbrace | fullName ]