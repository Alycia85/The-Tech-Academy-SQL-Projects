USE MASTER
go
DROP DATABASE L
go
CREATE DATABASE  L
go
USE  L  
go



Create Table tbl_LibraryBranch (
LibraryBranch_BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
LibraryBranch_BranchName VARCHAR(50) NOT NULL,
LibraryBranch_Address VARCHAR(50) NOT NULL
);

INSERT INTO tbl_LibraryBranch(LibraryBranch_BranchName, LibraryBranch_Address)
VALUES
('Sharpstown', '238 Riverbank'),
('Central', '525 Yield'),
('Pigpen','1802 West Glenn'),
('Rover','2020 North Apple')
;

Create Table tbl_Publisher(
Publisher_Phone VARCHAR(50) NOT NULL,
Publisher_Address VARCHAR(50) NOT NULL,
Publisher_PublisherName VARCHAR(50) NOT NULL PRIMARY KEY
);

INSERT INTO tbl_Publisher(Publisher_PublisherName, Publisher_Phone, Publisher_Address)
VALUES
('Fear Publishing', '323-789-9990', '252 Scary Way'),
('Joy Publishing', '323-789-9990', '252 Scary Way'),
('Scary Publishing', '323-789-9990', '252 Scary Way'),
('Life Publishing', '323-789-9990', '252 Scary Way')
;

Create Table tbl_Borrower (
Borrower_CardNo INT PRIMARY KEY NOT NULL,
Borrower_Name VARCHAR(50) NOT NULL,
Borrower_Address VARCHAR(50) NOT NULL,
Borrower_Phone VARCHAR (50) NOT NULL
);

INSERT INTO tbl_Borrower(Borrower_CardNo, Borrower_Name, Borrower_Address, Borrower_Phone)
VALUES
(1, 'Bob Jones', '323 Pecking Street', '345-798-3467'),
(2, 'Le Jones', '328 Pecking Street', '375-798-3467'),
(3, 'Bibby Jones', '322 Pecking Street', '365-798-3467'),
(4, 'Rob Jones', '423 Pecking Street', '355-798-3767'),
(5, 'Li James', '338 Pecking Street', '375-798-3467'),
(6, 'Libby Jones', '3 Pecking Street', '365-798-3467'),
(7, 'Robby Jones', '53 Pecking Street', '399-798-3467'),
(8, 'Bobby Jones', '324 Pecking Street', '345-799-3467')
;

Create Table tbl_Books (
Books_BookID INT PRIMARY KEY NOT NULL,
Books_Title VARCHAR(50) NOT NULL,
Books_PublisherName VARCHAR(50) NOT NULL FOREIGN KEY REFERENCES tbl_Publisher(Publisher_PublisherName) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO tbl_Books(Books_BookID, Books_Title, Books_PublisherName)
VALUES
(1,'The Lost Tribe', 'Fear Publishing'),
(2, 'The Lost Bag', 'Joy Publishing'),
(3, 'The Lost Trophie', 'Fear Publishing'),
(4, 'The Lost Bride', 'Scary Publishing'),
(5, 'The Lost Dog', 'Fear Publishing'),
(6, 'The Lost Elephant', 'Life Publishing'),
(7, 'The Lost Phone', 'Fear Publishing'),
(8, 'The Lost Human', 'Joy Publishing'),
(9, 'The Lost Robot', 'Joy Publishing'),
(10, 'The Lost Item', 'Joy Publishing'),
(11, 'The Happy Tribe', 'Scary Publishing'),
(12, 'The Sad Bag', 'Scary Publishing'),
(13, 'The Kept Trophie', 'Fear Publishing'),
(14, 'The Fond Bride', 'Fear Publishing'),
(15, 'The Fed Dog', 'Fear Publishing'),
(16, 'The Loved Elephant', 'Fear Publishing'),
(17, 'The Hated Phone', 'Scary Publishing'),
(18, 'The Adored Human', 'Fear Publishing'),
(19, 'The Curious Robot', 'Joy Publishing'),
(20, 'The Forgotten Item', 'Fear Publishing'),
(21, 'The Found Tribe', 'Fear Publishing'),
(22, 'The Found Bag', 'Scary Publishing'),
(23, 'The Found Trophie', 'Fear Publishing'),
(24, 'The Found Bride', 'Fear Publishing'),
(25, 'The Found Dog', 'Joy Publishing'),
(26, 'The Found Elephant', 'Fear Publishing'),
(27, 'The Found Phone', 'Fear Publishing'),
(28, 'The Found Human', 'Fear Publishing'),
(29, 'The Found Robot', 'Fear Publishing'),
(30, 'The Found Item', 'Fear Publishing'),
(31, 'The Number Tribe', 'Fear Publishing'),
(32, 'The Number Bag', 'Fear Publishing'),
(33, 'The Number Trophie', 'Fear Publishing'),
(34, 'The Final Bride', 'Fear Publishing'),
(35, 'The Tattood Dog', 'Fear Publishing'),
(36, 'The Hygenic Elephant', 'Fear Publishing'),
(37, 'The Acrobatic Phone', 'Fear Publishing'),
(38, 'The Strange Human', 'Fear Publishing'),
(39, 'The Missing Robot', 'Fear Publishing'),
(40, 'The Beloved Item', 'Fear Publishing'),
(41, 'The Happy Toaster', 'Joy Publishing'),
(42, 'The InterestedToaster', 'Joy Publishing'),
(43, 'The Curious Toaster', 'Joy Publishing'),
(44, 'The Adventerous Toaster', 'Joy Publishing'),
(45, 'The Singing Toaster', 'Joy Publishing'),
(46, 'The Animated Toaster', 'Joy Publishing'),
(47, 'The Game Toaster', 'Joy Publishing'),
(48, 'The Funny Toaster', 'Joy Publishing'),
(49, 'The Strange Toaster', 'Joy Publishing'),
(50, 'The Luxurious Toaster', 'Joy Publishing')
;

Create Table tbl_BookCopies (
BookCopies_BookID INT NOT NULL FOREIGN KEY REFERENCES tbl_Books(Books_BookID) ON UPDATE CASCADE ON DELETE CASCADE,
BookCopies_BranchID INT NOT NULL FOREIGN KEY REFERENCES tbl_LibraryBranch(LibraryBranch_BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
BookCopies_NumberOfCopies INT NOT NULL
);

INSERT INTO tbl_BookCopies(BookCopies_BranchID, BookCopies_BookID, BookCopies_NumberOfCopies)
VALUES
(1, 1, 2),
(2, 1, 2),
(3, 3, 2),
(4, 4, 2),
(1, 5, 2),
(1, 6, 2),
(2, 7, 2),
(3, 8, 2),
(4, 9, 2),
(1, 10, 2),
(1, 11, 2),
(2, 12, 2),
(3, 13, 2),
(4, 14, 2),
(1, 15, 2),
(1, 16, 2),
(2, 17, 2),
(3, 18, 2),
(4, 19, 2),
(1, 20, 2),
(1, 21, 2),
(2, 22, 2),
(3, 23, 2),
(4, 24, 2),
(1, 25, 2),
(1, 26, 2),
(2, 27, 2),
(3, 28, 2),
(4, 29, 2),
(1, 30, 2),
(1, 31, 2),
(2, 32, 2),
(3, 33, 2),
(4, 34, 2),
(1, 35, 2),
(1, 36, 2),
(2, 37, 2),
(3, 38, 2),
(4, 39, 2),
(1, 40, 2),
(1, 41, 2),
(2, 42, 2),
(3, 43, 2),
(4, 44, 2),
(1, 45, 2),
(1, 46, 2),
(2, 47, 2),
(3, 48, 2),
(4, 49, 2),
(1, 50, 2)
;

CREATE Table tbl_BookLoans (
BookLoans_BookID INT  NOT NULL FOREIGN KEY REFERENCES tbl_Books(Books_BookID) ON UPDATE CASCADE ON DELETE CASCADE,
BookLoans_BranchID INT NOT NULL FOREIGN KEY REFERENCES tbl_LibraryBranch(LibraryBranch_BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
BookLoans_CardNo INT NOT NULL FOREIGN KEY REFERENCES tbl_Borrower(Borrower_CardNo),
BookLoans_DateOut VARCHAR (50),
BookLoans_DateDue VARCHAR (50)
);

INSERT INTO tbl_BookLoans(BookLoans_BranchID, BookLoans_BookID, BookLoans_CardNo, BookLoans_DateOut, BookLoans_DateDue)
VALUES
(1, 1, 1, '2002-03-12', '2012-02-12'),
(2, 2, 2, '2002-03-12', '2002-06-20'),
(3, 3, 3, '2002-03-20', '2002-06-20'),
(4, 4, 4, '2002-03-12', '2002-06-02'),
(1, 5, 5, '2002-03-12', '2002-02-12'),
(2, 6, 6, '2002-03-12', '2002-02-12'),
(3, 7, 7, '2002-03-12', '2002-026-12'),
(4, 8, 8, '2002-03-12', '2002-06-12'),
(1, 9, 1, '2002-03-12', '2002-06-12'),
(2, 10, 2, '2002-03-12', '2002-06-12'),
(1, 11, 1, '2002-03-12', '2002-06-12'),
(2, 12, 2, '2002-03-12', '2002-06-12'),
(3, 13, 3, '2002-03-12', '2002-06-12'),
(4, 14, 4, '2002-03-12', '2002-06-12'),
(1, 15, 5, '2002-03-12', '2002-06-12'),
(2, 16, 6, '2002-03-12', '2002-06-12'),
(3, 17, 7, '2002-03-12', '2002-06-12'),
(4, 18, 8, '2002-03-12', '2002-06-12'),
(1, 19, 1, '2002-03-12', '2002-06-12'),
(2, 20, 2, '2002-03-12', '2002-06-12'),
(1, 21, 1, '2002-03-12', '2002-06-12'),
(2, 22, 2, '2002-03-12', '2002-02-12'),
(3, 23, 3, '2002-03-12', '2002-02-12'),
(4, 24, 4, '2002-03-12', '2002-02-12'),
(1, 25, 5, '2002-03-12', '2002-02-12'),
(2, 26, 6, '2002-03-12', '2002-02-12'),
(3, 27, 7, '2002-03-12', '2002-02-12'),
(4, 28, 8, '2002-03-12', '2002-02-12'),
(1, 29, 1, '2002-03-12', '2002-02-12'),
(2, 30, 2, '2002-03-12', '2002-02-12'),
(1, 31, 1, '2002-03-12', '2002-02-12'),
(2, 32, 2, '2002-03-12', '2002-02-12'),
(3, 33, 3, '2002-03-12', '2002-02-12'),
(4, 34, 4, '2002-03-12', '2002-02-12'),
(1, 35, 5, '2002-03-12', '2002-02-12'),
(2, 36, 6, '2002-03-12', '2002-02-12'),
(3, 37, 7, '2002-03-12', '2002-02-12'),
(4, 38, 8, '2002-03-12', '2002-02-12'),
(1, 39, 1, '2002-03-12', '2002-02-12'),
(2, 40, 2, '2002-03-12', '2002-02-12'),
(1, 41, 5, '2002-03-12', '2002-02-12'),
(2, 42, 6, '2002-03-12', '2002-02-12'),
(3, 43, 7, '2002-03-12', '2002-02-12'),
(4, 44, 8, '2002-03-12', '2002-02-12'),
(1, 45, 1, '2002-03-12', '2002-02-12'),
(2, 46, 2, '2002-03-12', '2002-06-12'),
(1, 47, 5, '2002-03-12', '2002-06-12'),
(2, 48, 6, '2002-03-12', '2002-06-12'),
(3, 49, 7, '2002-03-12', '2002-06-12'),
(4, 50, 8, '2002-03-12', '2002-06-12')
;

Create Table tbl_BookAuthors (
BookAuthors_BookID INT NOT NULL FOREIGN KEY REFERENCES tbl_Books(Books_BookID) ON UPDATE CASCADE ON DELETE CASCADE,
BookAuthors_AuthorName VARCHAR(50) NOT NULL
);

INSERT INTO tbl_BookAuthors(BookAuthors_BookID, BookAuthors_AuthorName)
VALUES
(1, 'Steven King'),
(2, 'Larry King'),
(3, 'Steven Bing'),
(4, 'Steven Ring'),
(5, 'Bob King'),
(6, 'Josey King'),
(7, 'Henrietta King'),
(8, 'Lu King'),
(9, 'Steven Sing'),
(10, 'Steven Ling'),
(11, 'Steven King'),
(12, 'Larry King'),
(13, 'Steven Bing'),
(14, 'Steven Ring'),
(15, 'Bob King'),
(16, 'Josey King'),
(17, 'Henrietta King'),
(18, 'Lu King'),
(19, 'Steven Sing'),
(20, 'Steven Ling'),
(21, 'Steven King'),
(22, 'Larry King'),
(23, 'Steven Bing'),
(24, 'Steven Ring'),
(25, 'Bob King'),
(26, 'Josey King'),
(27, 'Henrietta King'),
(28, 'Lu King'),
(29, 'Steven Sing'),
(30, 'Steven Ling'),
(31, 'Steven King'),
(32, 'Larry King'),
(33, 'Steven Bing'),
(34, 'Steven Ring'),
(35, 'Bob King'),
(36, 'Josey King'),
(37, 'Henrietta King'),
(38, 'Lu King'),
(39, 'Steven Sing'),
(40, 'Steven Ling'),
(41, 'Steven King'),
(42, 'Larry King'),
(43, 'Steven Bing'),
(44, 'Steven Ring'),
(45, 'Bob King'),
(46, 'Josey King'),
(47, 'Henrietta King'),
(48, 'Lu King'),
(49, 'Steven Sing'),
(50, 'Steven Ling')
;

Select * FROM tbl_BookCopies WHERE BookCopies_BookID = 1 and BookCopies_BranchID = 1;
Select * FROM tbl_BookCopies WHERE BookCopies_BookID = 1;
Select * FROM tbl_BookLoans INNER JOIN tbl_Borrower ON  BookLoans_CardNo = Borrower_CardNo WHERE BookLoans_DateOut = null;
Select * FROM tbl_BookLoans JOIN tbl_books ON Books_BookID = BookLoans_BookID JOIN tbl_Borrower ON Borrower_CardNo = BookLoans_CardNo  WHERE BookLoans_BranchID = 1 and BookLoans_DateDue = '2012-02-12';

Select * FROM  tbl_LibraryBranch JOIN tbl_BookLoans ON LibraryBranch_BranchID = BookLoans_BranchID WHERE LibraryBranch_BranchID = 1;
Select * FROM  tbl_LibraryBranch JOIN tbl_BookLoans ON LibraryBranch_BranchID = BookLoans_BranchID WHERE LibraryBranch_BranchID = 2;
Select * FROM  tbl_LibraryBranch JOIN tbl_BookLoans ON LibraryBranch_BranchID = BookLoans_BranchID WHERE LibraryBranch_BranchID = 3;
Select * FROM  tbl_LibraryBranch JOIN tbl_BookLoans ON LibraryBranch_BranchID = BookLoans_BranchID WHERE LibraryBranch_BranchID = 4;

Select Count(Borrower_CardNo) AS 'Number of Books Checked Out', Borrower_Name, Borrower_Address FROM tbl_Borrower JOIN tbl_BookLoans ON Borrower_CardNo = BookLoans_CardNo GROUP BY Borrower_Name, Borrower_CardNo, Borrower_Address HAVING(Borrower_CardNo) >= 5;
Select * FROM tbl_BookCopies JOIN tbl_BookAuthors ON BookAuthors_BookID = BookCopies_BookID JOIN tbl_Books ON Books_BookID = BookAuthors_BookID WHERE BookCopies_BranchID = 2 and BookAuthors_AuthorName = 'Steven King';