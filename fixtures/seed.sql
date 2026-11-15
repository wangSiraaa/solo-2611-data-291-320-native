CREATE TABLE orders(id TEXT PRIMARY KEY,customer_id TEXT,amount INTEGER);
CREATE TABLE customers(customer_id TEXT PRIMARY KEY,name TEXT);
CREATE TABLE limits(customer_id TEXT PRIMARY KEY,cap INTEGER);
INSERT INTO orders VALUES('o1','c1',12),('o2','c2',7),('o3',NULL,9);
INSERT INTO customers VALUES('c1','A'),('c3','C');
INSERT INTO limits VALUES('c1',10),('c2',8);
