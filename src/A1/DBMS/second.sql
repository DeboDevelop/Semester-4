-- 	LIVE SQL: https://livesql.oracle.com/apex/livesql/s/jk0djqfrkm93igzmbmtgsfbpb

CREATE TABLE Member(Member_Id NUMBER(5) PRIMARY KEY,
 Member_Name VARCHAR2(30) NOT NULL,
 Member_address VARCHAR(50),
 Acc_Open_Date DATE,
 Membership_type VARCHAR(20),
 Fees_paid NUMBER(4),
 Max_Books_Allowed NUMBER(2) CHECK(Max_Books_Allowed<=7),
 Penalty_Amount NUMBER(7,2) CHECK(Penalty_Amount<=1000)
 );

DROP TABLE Member;

INSERT into Member VALUES(1,'Sayantan Sinha','Pune','10-dec-10','Lifetime',2000,6,50);
INSERT into Member VALUES(2,'Abhirup Sarkar','Kolkata','19-jan-11','Annual',1400,3,0);
INSERT into Member VALUES(3,'Ritesh Bhuniya','Gujarat','20-feb-11','Quarterly',350,2,100);
INSERT into Member VALUES(4,'Paresh Sen','Tripura','21-mar-11','Half yearly',700,1,200);
INSERT into Member VALUES(5,'Sohini Haldar','Birbhum','11-apr-11','Lifetime',2000,6,10);
INSERT into Member VALUES(6,'Suparna Biswas','Kolkata','12-apr-11','Half yearly',700,1,0);
INSERT into Member VALUES(7,'Suranjana Basu','Purulia','30-june-11','Annual',1400,3,50);
INSERT into Member VALUES(8,'Arpita Roy', 'Kolkata','31-july-11','Half yearly',700,1,0);

SELECT * FROM Member;

CREATE TABLE Books(Book_No NUMBER(6) PRIMARY KEY,
	Book_Name VARCHAR2(30) NOT NULL,
	Author_name VARCHAR2(30),
	Cost NUMBER(7,2),
	Category CHAR(10)
);

DROP TABLE Books;

INSERT into Books VALUES(101, 'Let us C', 'Denis Ritchie', 450, 'Others');
INSERT into Books VALUES(102, 'Oracle-Complete Ref', 'Loni', 550, 'Database');
INSERT into Books VALUES(103, 'Visual Basic 10', 'BPB', 700, 'Others');
INSERT into Books VALUES(104, 'Mastering SQL', 'Loni', 450, 'Database');
INSERT into Books VALUES(105, 'PL SQL-Ref', 'Scott Urman', 750, 'Database');
INSERT into Books VALUES(106, 'UNIX', 'Sumitava Das', 300, 'System');
INSERT into Books VALUES(107, 'Optics', 'Ghatak', 600, 'Science');
INSERT into Books VALUES(108, 'Data Structure', 'G.S. Baluja', 350, 'Others');

SELECT * FROM Books;

CREATE TABLE Issue(Lib_Issue_Id NUMBER(10) PRIMARY KEY,
	Book_No NUMBER(6) REFERENCES Books,
	Member_Id NUMBER(5) REFERENCES Member,
	Issue_Date DATE,
	Return_date DATE
);

DROP TABLE Issue;

INSERT into Issue VALUES(7001, 101, 1, '10-jan-11', NULL);
INSERT into Issue VALUES(7002, 102, 2, '25-jan-11', NULL);
INSERT into Issue VALUES(7003, 104, 1, '1-feb-11', NULL);
INSERT into Issue VALUES(7004, 104, 2, '15-mar-11', NULL);
INSERT into Issue VALUES(7005, 101, 4, '04-apr-11', NULL);
INSERT into Issue VALUES(7006, 108, 5, '12-apr-11', NULL);
INSERT into Issue VALUES(7007, 101, 8, '1-aug-11', NULL);

SELECT * FROM Issue;


SELECT MEMBER_ID, MEMBER_NAME FROM Member INNER JOIN Issue USING(MEMBER_ID) WHERE ISSUE_DATE BETWEEN '26-JAN-11' AND  '14-APR-11'