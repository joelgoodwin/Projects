CREATE DATABASE db_libraryProject

USE db_libraryProject


/****CREATE TABLES SECTION****/


CREATE TABLE tbl_book (
	book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	book_title VARCHAR(50) NOT NULL,
	book_publisherName VARCHAR(50) NOT NULL
	);

CREATE TABLE tbl_authors (
	Authors_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Authors_bookId INT NOT NULL, 
	Authors_name VARCHAR(50) NOT NULL
	);

CREATE TABLE tbl_publisher (
	publisher_name VARCHAR(50) PRIMARY KEY NOT NULL,
	publisher_address VARCHAR(50) NOT NULL,
	publisher_phone VARCHAR(50) NOT NULL
	);

CREATE TABLE tbl_loans (
	loans_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	loans_bookId INT NOT NULL,
	loans_BranchId INT NOT NULL, 
	loans_cardNo INT NOT NULL,
	loans_dateOut DATE NOT NULL,
	loans_dateDue DATE NOT NULL
);

CREATE TABLE tbl_copies (
	copies_bookId INT NOT NULL, 
	copies_branchId INT NOT NULL, 
	copies_noCopies INT NOT NULL
);


CREATE TABLE tbl_borrower (
	borrower_cardNO INT PRIMARY KEY NOT NULL IDENTITY (101,1),
	borrower_name VARCHAR(50) NOT NULL,
	borrower_address VARCHAR(50) NOT NULL,
	borrower_phone INT NOT NULL
);

CREATE TABLE tbl_branch (
	branch_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branch_name VARCHAR(50) NOT NULL,
	branch_address VARCHAR(50) NOT NULL
);

SELECT * FROM tbl_book,


/****FILL IN TABLES SECTION****/


INSERT INTO tbl_book
		(book_title, book_publisherName)
		VALUES 
		('The Lost Tribe', 'Johnsons'),
		('IT', 'Barnes'),
		('All about Love', 'kerrington'),
		('The Handmaids Tail', 'Johnsons'),
		('The Hitchhikers Guide to the Glaxy', 'Johnsons'),
		('Infinite Jest', 'kerrington'),
		('The Left Hand of Darkness', 'Barnes'),
		('Lolita', 'Barnes'),
		('Maus', 'Kerrington'),
		('Carrie', 'Kerrington'),
		('Cell', 'Johnsons'),
		('Christine', 'Johnsons'),
		('The Dark Tower', 'Barnes'),
		('Cujo', 'Johnsons'),
		('Firestarter', 'Kerrington'),
		('Joyland', 'Johnsons'),
		('Misery', 'Barnes'),
		('The Shining', 'Barnes'),
		('The Stand', 'Kerrington'),
		('Under the Dome', 'Barnes')
;
	
	SELECT * FROM tbl_book;

INSERT INTO tbl_authors
		(Authors_bookId, Authors_name)
		VALUES 
		(1, 'Mary Shelley'),
		(2, 'Stephen King'),
		(3, 'William Shatner'),
		(4, 'John WIlliams'),
		(5, 'Douglas Adams'),
		(6, 'Kerry Underwood'),
		(7, 'Ryan Gosling'),
		(8, 'Jerry Lewis'),
		(9, 'Tonto'),
		(10, 'Hank Williams'),
		(11, 'Mary Shelley'),
		(12, 'Stephen King'),
		(13, 'William Shatner'),
		(14, 'John WIlliams'),
		(15, 'Douglas Adams'),
		(16, 'Kerry Underwood'),
		(17, 'Ryan Gosling'),
		(18, 'Jerry Lewis'),
		(19, 'Tonto'),
		(20, 'Hank Williams')
;
	
	SELECT * FROM tbl_authors;

INSERT INTO tbl_publisher
		(publisher_name, publisher_address, publisher_phone)
		VALUES 
		('johnsons', '123 Los Angeles St', 3455555555),
		('kerrington', '123 Dallas st', 2345555555),
		('barnes', '123 York st, New York', 1235555555)
	;
	SELECT * FROM tbl_publisher;

INSERT INTO tbl_loans
		(loans_bookId, loans_BranchId, loans_cardNo, loans_dateOut, loans_dateDue)
		VALUES 
		(2, 1, 101, '2017-10-11', '2017-11-01'),
		(12, 1, 102, '2017-10-11', '2017-11-01'),
		(1, 1, 103, '2017-10-11', '2017-11-01'),
		(2, 1, 104, '2017-10-11', '2017-11-01'),
		(3, 1, 105, '2017-10-11', '2017-11-01'),
		(4, 1, 106, '2017-10-11', '2017-11-01'),
		(5, 1, 107, '2017-10-11', '2017-11-01'),
		(6, 1, 108, '2017-10-11', '2017-11-01'),
		(7, 1, 101, '2017-10-11', '2017-11-01'),
		(8, 1, 102, '2017-10-11', '2017-11-01'),
		(9, 1, 103, '2017-10-11', '2017-11-01'),
		(10, 1, 104, '2017-10-11', '2017-11-01'),
		(2, 1, 105, '2017-10-11', '2017-11-01'),
		(12, 1, 106, '2017-10-11', '2017-11-01'),
		(1, 2, 107, '2017-09-21', '2017-10-11'),
		(2, 2, 108, '2017-09-21', '2017-10-11'),
		(3, 2, 101, '2017-09-21', '2017-10-11'),
		(4, 2, 102, '2017-09-21', '2017-10-11'),
		(5, 2, 103, '2017-09-21', '2017-10-11'),
		(6, 2, 104, '2017-09-21', '2017-10-11'),
		(7, 2, 105, '2017-09-21', '2017-10-11'),
		(8, 2, 106, '2017-09-21', '2017-10-11'),
		(9, 2, 107, '2017-09-21', '2017-10-11'),
		(10, 2, 108, '2017-09-21', '2017-10-11'),
		(2, 2, 101, '2017-09-21', '2017-10-11'),
		(12, 2, 102, '2017-09-28', '2017-10-18'),
		(11, 3, 103, '2017-09-28', '2017-10-18'),
		(12, 3, 104, '2017-09-28', '2017-10-18'),
		(13, 3, 105, '2017-09-28', '2017-10-18'),
		(14, 3, 106, '2017-09-28', '2017-10-18'),
		(15, 3, 107, '2017-09-28', '2017-10-18'),
		(16, 3, 108, '2017-09-28', '2017-10-18'),
		(17, 3, 101, '2017-09-28', '2017-10-18'),
		(18, 3, 102, '2017-09-28', '2017-10-18'),
		(19, 3, 103, '2017-09-28', '2017-10-18'),
		(20, 3, 104, '2017-09-28', '2017-10-18'),
		(2, 3, 105, '2017-09-28', '2017-10-18'),
		(12, 3, 106, '2017-09-28', '2017-10-18'),
		(11, 4, 107, '2017-10-07', '2017-10-27'),
		(12, 4, 108, '2017-10-07', '2017-10-27'),
		(13, 4, 101, '2017-10-07', '2017-10-27'),
		(14, 4, 102, '2017-10-07', '2017-10-27'),
		(15, 4, 103, '2017-10-07', '2017-10-27'),
		(16, 4, 104, '2017-10-07', '2017-10-27'),
		(17, 4, 105, '2017-10-07', '2017-10-27'),
		(18, 4, 106, '2017-10-07', '2017-10-27'),
		(19, 4, 107, '2017-10-07', '2017-10-27'),
		(20, 4, 108, '2017-10-07', '2017-10-27'),
		(11, 1, 101, '2017-10-07', '2017-10-27'),
		(12, 1, 102, '2017-10-07', '2017-10-27'),
		(13, 1, 103, '2017-10-07', '2017-10-27'),
		(14, 1, 104, '2017-10-07', '2017-10-27'),
		(15, 1, 105, '2017-10-07', '2017-10-27'),
		(16, 1, 106, '2017-10-07', '2017-10-27'),
		(17, 1, 107, '2017-10-07', '2017-10-27'),
		(18, 1, 108, '2017-10-07', '2017-10-27'),
		(19, 1, 101, '2017-10-07', '2017-10-27'),
		(20, 1, 102, '2017-10-07', '2017-10-27'),
		(11, 1, 103, '2017-10-07', '2017-10-27'),
		(12, 1, 104, '2017-10-07', '2017-10-27'),
		(13, 1, 105, '2017-10-07', '2017-10-27'),
		(14, 1, 106, '2017-10-07', '2017-10-27'),
		(15, 1, 107, '2017-10-07', '2017-10-27'),
		(16, 1, 108, '2017-10-07', '2017-10-27'),
		(17, 1, 101, '2017-10-07', '2017-10-27'),
		(18, 1, 102, '2017-10-07', '2017-10-27'),
		(19, 1, 103, '2017-10-07', '2017-10-27'),
		(20, 1, 104, '2017-10-07', '2017-10-27'),
		(11, 1, 105, '2017-10-07', '2017-10-27'),
		(12, 1, 106, '2017-10-07', '2017-10-27'),
		(13, 1, 107, '2017-10-07', '2017-10-27'),
		(14, 1, 108, '2017-10-07', '2017-10-27'),
		(15, 1, 101, '2017-10-07', '2017-10-27'),
		(16, 1, 102, '2017-10-07', '2017-10-27'),
		(17, 1, 103, '2017-10-07', '2017-10-27'),
		(18, 1, 104, '2017-10-07', '2017-10-27'),
		(19, 1, 105, '2017-10-07', '2017-10-27'),
		(20, 1, 106, '2017-10-07', '2017-10-27')
	;
	SELECT * FROM tbl_loans;	

INSERT INTO tbl_copies
		(copies_bookId, copies_branchId, copies_noCopies)
		VALUES 
		(1, 1, 2),
		(1, 2, 2),
		(1, 3, 2),
		(1, 4, 2),
		(1, 5, 2),
		(1, 6, 2),
		(1, 7, 2),
		(1, 8, 2),
		(1, 9, 2),
		(1, 10, 2),
		(2, 1, 2),
		(2, 2, 2),
		(2, 3, 2),
		(2, 4, 2),
		(2, 5, 2),
		(2, 6, 2),
		(2, 7, 2),
		(2, 8, 2),
		(2, 9, 2),
		(2, 10, 2),
		(3, 11, 2),
		(3, 12, 2),
		(3, 13, 2),
		(3, 14, 2),
		(3, 15, 2),
		(3, 16, 2),
		(3, 17, 2),
		(3, 18, 2),
		(3, 19, 2),
		(3, 20, 2),
		(4, 11, 2),
		(4, 12, 2),
		(4, 13, 2),
		(4, 14, 2),
		(4, 15, 2),
		(4, 16, 2),
		(4, 17, 2),
		(4, 18, 2),
		(4, 19, 2),
		(4, 20, 2)
	;
	SELECT * FROM tbl_copies;	

INSERT INTO tbl_borrower
		(borrower_name, borrower_address, borrower_phone)
		VALUES 
		('john smith', '123 boston st', 1111111),
		('janice smith', '123 carrol st', 2222222),
		('jerrold johnson', '123 bog st', 3333333),
		('jenny kennedy', '123 fox st', 4444444),
		('bobby smart', '123 darren st', 5555555),
		('kenny thompson', '123 rudolph st', 6666666),
		('nicky thick', '123 benson st', 7777777),
		('derrick stone', '123 ferrel st', 8888888)
	;
	SELECT * FROM tbl_borrower;

INSERT INTO tbl_branch
		(branch_name, branch_address)
		VALUES 
		('sharpstown', '123 campbell st'),
		('central', '123 taco st'),
		('downtown', '123 broadway st'),
		('westside', '123 darold st')
	;
	SELECT * FROM tbl_branch, tbl_book;

	
/**** SELECT STATEMENTS FOR DRILLS ****/


	/**** 1. How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? Answer: 2****/
	
	SELECT 
		book_title, branch_name, copies_noCopies
		FROM tbl_copies 
		INNER JOIN tbl_book ON tbl_book.book_id = tbl_copies.copies_bookId
		INNER JOIN tbl_branch ON tbl_branch.branch_id = tbl_copies.copies_branchId
		WHERE book_title = 'the lost tribe' AND branch_name = 'sharpstown' 
	;

	/**** 2. How many copies of the book titled "The Lost Tribe" are owned by each library branch? Answer: 2 by each ****/
	
	SELECT 
		book_title, branch_name, copies_noCopies
		FROM tbl_copies 
		INNER JOIN tbl_book ON tbl_book.book_id = tbl_copies.copies_bookId
		INNER JOIN tbl_branch ON tbl_branch.branch_id = tbl_copies.copies_branchId
		WHERE book_title = 'the lost tribe' 
	;

	/**** 3. Retrieve the names of all borrowers who do not have any books checked out. Answer: None ****/
		
	SELECT
		borrower_name
		FROM tbl_borrower 
		LEFT JOIN tbl_loans ON tbl_loans.loans_cardNo = tbl_borrower.borrower_cardNO
		WHERE tbl_loans.loans_cardNO IS NULL
	;

	/**** 4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address. ANSWER: ****/
	
	SELECT 
		b3.branch_name, b1.book_title, b2.borrower_name, b2.borrower_address, l.loans_dateDue
		FROM tbl_loans l 
		INNER JOIN tbl_book b1 ON b1.book_id = l.loans_bookId
		INNER JOIN tbl_borrower b2 ON b2.borrower_cardNO = l.loans_cardNo
		INNER JOIN tbl_branch b3 ON b3.branch_id = l.loans_BranchId
		WHERE l.loans_dateDue <= '2017-10-11' AND b3.branch_name = 'sharpstown'
	;

	/**** 5. For each library branch, retrieve the branch name and the total number of books loaned out from that branch. ANSWER: ****/
	
	SELECT branch_name, COUNT(loans_dateOut) AS 'TOTAL LOANS'
		FROM tbl_loans 
		INNER JOIN tbl_branch ON tbl_branch.branch_id = tbl_loans.loans_BranchId
		GROUP BY branch_name
	;

	/**** 6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out. ANSWER: None ****/
	
	SELECT borrower_name, borrower_address, COUNT (loans_dateOut)
		FROM tbl_borrower 
		INNER JOIN tbl_loans ON tbl_loans.loans_cardNo = tbl_borrower.borrower_cardNO
		GROUP BY borrower_name, borrower_address, loans_dateOut
		HAVING COUNT(*) >= 5
	;
	
	/**** 7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central". ANSWER: ****/

		SELECT book_title, copies_noCopies
			FROM tbl_book b1 
			LEFT JOIN tbl_authors a ON a.Authors_bookId = b1.book_id
			LEFT JOIN tbl_copies c ON c.copies_bookId = b1.book_id
			LEFT JOIN tbl_branch b2 ON b2.branch_id = c.copies_branchId
			WHERE b2.branch_name = 'central' AND authors_name = 'stephen king'
		;
		  