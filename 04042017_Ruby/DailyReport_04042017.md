*****************Daily Report*******************

I. NoSQL vs SQL 

1. NoSQL: Riak, Mongo DB, Cassandra, HBase,.....

- Non-relation DB : do not incoporate table, be stored in document file, key - value pairs...

- In NoSQL DB, queries are focused on collection of documents.

- Storing a large amounts of data that often have no structure.

- NoSQL databases are horizontally scalable.

- Making the most of cloud computing and storage. 

- Can develop rapidly.

- NoSQL database follows the Brewers CAP theorem ( Consistency, Availability and Partition tolerance ).

2. SQL: MySQL, SQLite, Oracle. Postgres....

- Relation DB: incoporate table.

- Use SQL ( structured query language ) for defining and manipulating the data.

- Data you store in it has to have structure.

- SQL databases are vertically scalable.

- SQL databases emphasizes on ACID ( Atomicity, Consistency, Isolation and Durability) properties.

II. Databases Facebook use :

- Facebook primarily use MySQL to store wall posts, user information, timeline. 

- FB use Memcached to speed up load data by caching data and objects in RAM.

-FB use a generic object store called Haystack to store photo.

- FB use Cassandra to store Inbox.

- FB handles logging by Scribe.

- FB uses Varnish to serve photos, profile pictures, handle requests.

III. Store Engine:

1. MyISAM: 

- support full-text search

- no support transactions

- work with mechanism table-level locking

2. InnoDB: 

- support transactions

- can rehabilitate

- work with mechanism row-level locking

3. Memory

- also called HEAD tables (table without index)

- push data directly to RAM so access speed is vary fast. But data can lost when restart.

IV. Windown function in Postgresql :

1. row_number(): return the number of the current row from 1 to N

2. rank(): return the rank of the current row (with gaps)

3. dense_rank(): return the rank of the current row (without gaps)

4. percent_rank(): relative rank of the current row

5. cume_dist(): relative rank of the current row (bis)

6. ntile(): group your rows in buckets

7. lag(): return the previous row (or one of them)

8. lead(): return the next row (or one of them)

9. first_value(): return the first row

10. last_value(): return the last row

11. nth_value(): return the Nth row