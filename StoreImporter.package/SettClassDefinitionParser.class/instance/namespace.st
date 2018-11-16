grammar
namespace
	^ super namespace
		map: [ :first :rest | 
			(rest collect: [ :each | each last ])
				addFirst: first;
				yourself ]