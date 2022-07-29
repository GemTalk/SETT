I decode BLOBs from Oracle PostgreSQL Store databases.

It looks like the decoding from base 64 when fetching continuations is premature. If the implementation just fetched the bytes from the database, I think we could factor out more commonality from the two implementations. To Do.