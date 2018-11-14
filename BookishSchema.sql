
IF EXISTS ( SELECT * FROM master..sysdatabases WHERE name = 'Bookish' )
  USE master
  DROP DATABASE Bookish
GO

CREATE DATABASE Bookish
GO

USE Bookish
GO

CREATE TABLE Copies (
	CopyId int IDENTITY NOT NULL PRIMARY KEY,
	BookId int NOT NULL

)
GO

CREATE TABLE Books (
	BookId int IDENTITY NOT NULL PRIMARY KEY,
	Title nvarchar(max) NOT NULL,
	Isbn char(13) NOT NULL,
	Authors nvarchar(max) NOT NULL
)
GO

ALTER TABLE Copies
	ADD CONSTRAINT FK_Copy_Book FOREIGN KEY (BookId) REFERENCES Books(BookId)
GO

CREATE TABLE LibCheckout (
	CheckoutId int IDENTITY NOT NULL PRIMARY KEY,
	CopyId int NOT NULL,
	LibUserId nvarchar(max) NOT NULL,
	DueDate date NOT NULL
)
GO

ALTER TABLE LibCheckout
	ADD CONSTRAINT FK_LibCheckout_Copy FOREIGN KEY (CopyID) REFERENCES Copies(CopyId)
GO