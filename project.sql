create DATABASE Library_Records;
use Library_Records;

create table Members (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    books_borrowed VARCHAR(100) REFERENCES Books,
    checkouts INT
);

create table Books (
    id INT PRIMARY KEY,
    book_id INT,
    title VARCHAR(40) REFERENCES Books(id),
    genre VARCHAR(20),
    author VARCHAR(30),
    year_published DATE
);

create table Records (
    id INT PRIMARY KEY,
    date_borrowed DATE,
    date_returned DATE,
    status VARCHAR(20) REFERENCES checkouts(id)
)

INSERT into Members
VALUES
    ('1', 'Ally Greene', 'Wuthering Heights, The Yellow Wallpaper', '2'),
    ('2', 'Dennis Kim', 'Math, Accounting', '2' ),
    ('3', 'Sandra Likens', 'Harry Potter & the Goblet of Fire', '1'),
    ('4', 'Gerald Moore', 'Percy Jackson and the Lightning Thief, Pride and Prejudice', '2'),
    ('5', 'Ryan Hills', 'The Strange Case of Dr. Jekyll and Mr. Hyde', '1');

INSERT into Books 
VALUES
    ('1', '1', 'The Yellow Wallpaper', 'Gothic', 'Charlotte Perkins Gillman', '1892'),
    ('2', '2', 'Wuthering Heights', 'Gothic', 'Emily Bronte', '1847'),
    ('3', '3', 'Math', 'Academic' 'Joseph D. Wallace', '1998'),
    ('4', '4', 'Accounting', 'Academic', 'Ronald W. Bush', '2005'),
    ('5', '5', 'Harry Potter & the Goblet of Fire', 'Fantasy', 'J.K Rowing', '2000' ),
    ('6', '6', 'Percy Jackson and the Lightning Thief', 'Fantasy', 'Rick Riordan', '2005'),
    ('7', '7', 'Pride and Prejudice', 'Fiction', 'Jane Austen', '1813')
    ('8', '8', 'The Strange Case of Dr. Jekyll and Mr. Hyde', 'Horror Fiction' 'Robert Louis Stevenson', '1886');

INSERT into Records
VALUES
    ('1', '2025-03-19', NULL, 'checked-out'),
    ('2', '2025-03-19', NULL, 'checked-out'),
    ('3', '2025-05-19', '2025-05-31', 'available'),
    ('4', '2025-05-19', '2025-05-31', 'available'),
    ('5', '2025-06-10', NULL, 'checked-out'),
    ('6', '2025-07-12', '2025-07-14', 'available'),
    ('7', '2025-07-12', '2025-07-14', 'available'),
    ('8', '2025-08-11', NULL, 'checked-out');

Select * from Books
WHERE genre = 'Gothic'

Select * from Members
where checkouts > '3';

Select * from Records
where status = 'checked-out'