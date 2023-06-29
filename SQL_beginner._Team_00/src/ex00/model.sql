CREATE TABLE ways
	(id bigint primary key,
	node1 varchar not null ,
 	node2 varchar not null ,
 	cost int not null);

INSERT INTO ways VALUES (1, 'a', 'b', 10);
INSERT INTO ways VALUES (2, 'b', 'a', 10);
INSERT INTO ways VALUES (3, 'a', 'd', 20);
INSERT INTO ways VALUES (4, 'd', 'a', 20);
INSERT INTO ways VALUES (5, 'd', 'b', 25);
INSERT INTO ways VALUES (6, 'b', 'd', 25);
INSERT INTO ways VALUES (7, 'd', 'c', 30);
INSERT INTO ways VALUES (8, 'c', 'd', 30);
INSERT INTO ways VALUES (9, 'b', 'c', 35);
INSERT INTO ways VALUES (10, 'c', 'b', 35);
INSERT INTO ways VALUES (11, 'c', 'a', 15);
INSERT INTO ways VALUES (12, 'a', 'c', 15);