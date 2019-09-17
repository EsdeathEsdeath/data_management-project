CREATE TABLE films (
  title CHAR(50),
  id int,
  country CHAR(20),
  box_office int,
  release_date date,
  PRIMARY KEY (id)
); 

CREATE TABLE persons (
  id int,
  fio CHAR(30),
  PRIMARY KEY (id)
); 

CREATE TABLE persons2content (
  person_id int,
  film_id int,
  person_type CHAR(20),
  FOREIGN KEY (person_id) REFERENCES persons(id),
  FOREIGN KEY (film_id) REFERENCES films(id) 
); 

INSERT INTO films (title, id, country, box_office, release_date) 
VALUES ('Three Billboards Outside Ebbing', 0, 'USA, GBR', 159210164, '2017.09.04'),
('Fight Club', 1, 'USA, DEU', 100853753, '1999.09.10'),
('Lock, Stock and Two Smoking Barrels', 2, 'GBR', 3753929 , '1998.08.23'),
('Snatch', 3, 'USA, GBR', 83557872, '2000.08.23'),
('Inglourious Basterds', 4, 'USA, DEU', 321455689, '2009.05.20');

INSERT INTO persons (id, fio) 
VALUES (0, 'Martin McDonagh'),
(1, 'David Fincher'),
(2, 'Guy Ritchie'),
(3, 'Guy Ritchie'),
(4, 'Quentin Tarantino');

INSERT INTO persons2content (person_id, film_id, person_type) 
VALUES (0, 0, 'Режиссёр'),
(1, 1, 'Режиссёр'),
(2, 2, 'Режиссёр'),
(3, 3, 'Режиссёр'),
(4, 4, 'Режиссёр')