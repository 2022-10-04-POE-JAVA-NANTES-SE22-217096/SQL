DROP TABLE IF EXISTS t1;

CREATE TABLE t1(
    id INT PRIMARY KEY AUTO_INCREMENT,
    champ1 VARCHAR(255),
    champ2 INT(4),
    champ3 DATE
    );
    
ALTER TABLE t1 ADD champ4 VARCHAR(255);
ALTER TABLE t1 DROP champ1;

INSERT INTO t1(champ2,champ4) VALUES (5,"Hello"), (6,"SQL"), (8,"Mysql");

SELECT champ2, champ4
FROM t1
WHERE champ2 = 1;

DELETE FROM t1
WHERE champ2 = 1;

UPDATE t1
SET champ2 = 10
WHERE champ4 = "Hello"
