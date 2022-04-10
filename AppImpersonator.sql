*/ Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc. 
Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), 
and write SQL statements that might look like their own SQL. */


CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");
INSERT INTO clothes (type, design)
    VALUES ("dress", "yellow");
INSERT INTO clothes (type, design)
    VALUES ("pants", "jeans");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "navy blue");

alter table clothes add price integer default "unknown";

select * from clothes;

UPDATE clothes SET price = 10 WHERE id = 1;
UPDATE clothes SET price = 20 WHERE id = 2;
UPDATE clothes SET price = 30 WHERE id = 3;
UPDATE clothes SET price = 10 WHERE id = 4;
UPDATE clothes SET price = 20 WHERE id = 5;
UPDATE clothes SET price = 30 WHERE id = 6;

select * from clothes;

insert into clothes (type, design, price)
    values ("shoes", "white", 40);

select * from clothes;

delete from clothes where id = 4;

select * from clothes;
