Decoder for BLOBs from the Store database.
Store uses type 2 and type 3 BLOBs. Type 2 is a single byte string. Type 3 is a multi-byte string.
Store breaks up extremely long BLOBs into continuations. These are indicated by a negative blobType. The absolute value of the blobType is the id of the continuation row. There can be an arbitrarily large number of continuations.

Database implementations have different ways of encoding the BLOBs.