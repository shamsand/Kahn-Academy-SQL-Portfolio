/* In this project, you’re going to make your own table with some small set of “famous people”, then make more tables about things they do and join those to create nice human readable lists. */



CREATE TABLE movie_stars (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER);
    
INSERT INTO movie_stars (fullname, age) VALUES ("Bobby McBobbyFace", "47");
INSERT INTO movie_stars (fullname, age) VALUES ("Lucy BoBucie", "25");
INSERT INTO movie_stars (fullname, age) VALUES ("Banana FoFanna", "34");
INSERT INTO movie_stars (fullname, age) VALUES ("Shish Kabob", "20");
INSERT INTO movie_stars (fullname, age) VALUES ("Fluffy Sparkles", "18");

CREATE table movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    title TEXT);
    
INSERT INTO movies (person_id, title) VALUES (1, "Spider Man");
INSERT INTO movies (person_id, title) VALUES (1, "Venom");
INSERT INTO movies (person_id, title) VALUES (2, "Black Widow");
INSERT INTO movies (person_id, title) VALUES (2, "Ghostbusters");
INSERT INTO movies (person_id, title) VALUES (3, "Godzilla vs Kong");
INSERT INTO movies (person_id, title) VALUES (3, "Mortal Kombat");
INSERT INTO movies (person_id, title) VALUES (3, "Cruella");
INSERT INTO movies (person_id, title) VALUES (4, "Peter Rabbit");
INSERT INTO movies (person_id, title) VALUES (4, "Boss Baby");
INSERT INTO movies (person_id, title) VALUES (4, "Space Jam");

CREATE table married (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person1_id INTEGER,
    person2_id INTEGER);

INSERT INTO married (person1_id, person2_id)
    VALUES (1, 4);
INSERT INTO married (person1_id, person2_id)
    VALUES (2, 3);

select *
from movie_stars;

select *
from movies;

select *
from married;

select movie_stars.fullname, movies.title
from movie_stars
join movies
on movie_stars.id = movies.person_id;

select a.fullname, b.fullname 
from married
join movie_stars a
on married.person1_id = a.id
join movie_stars b
on married.person2_id = b.id;
