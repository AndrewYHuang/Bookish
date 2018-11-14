
IF EXISTS ( SELECT * FROM master..sysdatabases WHERE name = 'Bookish' )
  USE master
  DROP DATABASE Bookish
GO

CREATE DATABASE Bookish
GO

USE Bookish
GO

CREATE TABLE Copies (
	Id int IDENTITY NOT NULL PRIMARY KEY,
	BookId int NOT NULL

)
GO

CREATE TABLE Books (
	Id int IDENTITY NOT NULL PRIMARY KEY,
	Title nvarchar(max) NOT NULL,
	Isbn char(13) NOT NULL,
	Authors nvarchar(max) NOT NULL
)
GO

ALTER TABLE Copies
	ADD CONSTRAINT FK_Copy_Book FOREIGN KEY (BookId) REFERENCES Books(Id)
GO

CREATE TABLE LibraryUsers (
	Id int IDENTITY NOT NULL PRIMARY KEY,
	Name nvarchar(max)
)
GO

CREATE TABLE LibraryCheckout (
	CopyId int NOT NULL,
	LibraryUserId int NOT NULL,
	DueDate date NOT NULL,
	
	PRIMARY KEY (CopyId, LibraryUserId)
)
GO

ALTER TABLE LibraryCheckout
	ADD CONSTRAINT FK_Checkout_Copy FOREIGN KEY (CopyID) REFERENCES Copies(Id)
GO

ALTER TABLE LibraryCheckout
	ADD CONSTRAINT FK_Checkout_LibraryUser FOREIGN KEY (LibraryUserId) REFERENCES LibraryUsers(Id)

GO