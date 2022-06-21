instance creation
example1
	"These are in addition to the default map entry 'Root' -> {''. #()},
	 which defaults things to no prefix and no extra attributes."

	^ self forMap: { 
			  ('Root.GemStone'  -> { 'gs_'. { 'gemstone'    } }).
			  ('Root.Smalltalk' -> { 'vw_'. { 'visualworks' } })
			}