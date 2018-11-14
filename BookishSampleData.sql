USE Bookish

INSERT INTO Books(Title, Isbn, Authors) VALUES ('Can you solve my problems?',       '9781783351152', 'Alex Bellos')
INSERT INTO Books(Title, Isbn, Authors) VALUES ('Mistborn: The Final Empire',       '978076531178X', 'Brandon Sanderson')
INSERT INTO Books(Title, Isbn, Authors) VALUES ('Mistborn: The Well of Ascension',  '9780765316882', 'Brandon Sanderson')
INSERT INTO Books(Title, Isbn, Authors) VALUES ('Mistborn: The Hero of Ages',       '9780765316899', 'Brandon Sanderson')
INSERT INTO Copies(BookId) VALUES (1)
INSERT INTO Copies(BookId) VALUES (1)
INSERT INTO Copies(BookId) VALUES (1)
INSERT INTO Copies(BookId) VALUES (2)
INSERT INTO Copies(BookId) VALUES (2)
INSERT INTO Copies(BookId) VALUES (3)
INSERT INTO Copies(BookId) VALUES (3)
INSERT INTO Copies(BookId) VALUES (4)
INSERT INTO Copies(BookId) VALUES (4)


INSERT INTO LibCheckout(CopyId, LibUserId, DueDate) VALUES (   1,   'Andy H', '2000-01-01')
INSERT INTO LibCheckout(CopyId, LibUserId, DueDate) VALUES (   2,   'Andy H', '2020-01-01')
INSERT INTO LibCheckout(CopyId, LibUserId, DueDate) VALUES (   3,   'Andy H', '2020-01-01')
INSERT INTO LibCheckout(CopyId, LibUserId, DueDate) VALUES (   4,   'John M', '2020-01-01')
INSERT INTO LibCheckout(CopyId, LibUserId, DueDate) VALUES (   6,   'John M', '1999-02-01')
INSERT INTO LibCheckout(CopyId, LibUserId, DueDate) VALUES (   8,   'John M', '1999-03-01')
INSERT INTO LibCheckout(CopyId, LibUserId, DueDate) VALUES (   7,   'Dave S', '1999-01-01')
