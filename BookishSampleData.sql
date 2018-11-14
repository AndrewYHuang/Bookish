USE Bookish

INSERT INTO Books(Title, Isbn, Authors) VALUES ('Can you solve my problems?', '9781783351152', 'Alex Bellos')

INSERT INTO Copies(BookId) VALUES (1)

INSERT INTO LibraryUsers(Name) VALUES ('Andy H')

INSERT INTO LibraryCheckout(CopyId, LibraryUserId, DueDate) VALUES ('1999-01-01')