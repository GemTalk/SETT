Attempts to decode blob type 3 to a WideString. 

Blob type 3 appears to be for two-byte strings. Encoding is something like this:

Character:
1: End of (single-byte?) character, which preceded. 
    If no preceding character, value of 0.
2: Subtract 16r20 from following byte -- used for 16r01 - 16r0F
3: ? Not observed yet.
4: Add 16r60 to following byte -- used for 16r80 - 16rBF
5: Add 16rA0 to following byte -- used for 16rC0 - 16rFF?

Characters from 16r10 - 16r7f are themselves.

Characters are accumulated low-order byte first.