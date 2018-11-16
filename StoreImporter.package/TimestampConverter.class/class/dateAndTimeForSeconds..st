converting
dateAndTimeForSeconds: seconds
	| timeRelativeToStoreBaseDate |
	timeRelativeToStoreBaseDate := BaseDate + (Duration seconds: seconds).
	^ timeRelativeToStoreBaseDate asLocal 