using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using Bookish.DataAccess.Entities;
using Dapper;

namespace Bookish.DataAccess.Sql
{
    public class SquirrelWhisperer
    {
        private readonly IDbConnection _db = new SqlConnection(ConfigurationManager.ConnectionStrings["BookishConnection"].ConnectionString);

        public SquirrelWhisperer()
        {
        }

        public IEnumerable<Book> GetBooks()
        {
            var sqlString = "SELECT [BookId], [Title], [Isbn], [Authors] FROM [Books]";
            var bookList = _db.Query<Book>(sqlString).ToList();
            return bookList;
        }

        public IEnumerable<Copy> GetCopiesOfBook(Book book)
        {
            var sqlString = $"SELECT [CopyId], [BookId] FROM [Copies] WHERE [BookId] = {book.BookId}";
            var copyList = _db.Query<Copy>(sqlString).ToList();
            return copyList;
        }

        public IEnumerable<LibCheckout> GetCheckoutsOfBook(Book book)
        {
            List<Copy> copyList = GetCopiesOfBook(book).ToList();
            var sqlString = $"SELECT [CheckoutId], [CopyId], [LibUserId], [DueDate] FROM [LibCheckout] WHERE [CopyId] IN ({string.Join(", ", copyList.Select(x => x.CopyId))})";
            var checkoutList = _db.Query<LibCheckout>(sqlString).ToList();
            return checkoutList;
        }

        public IEnumerable<LibCheckout> GetCheckoutsOfLibUser(string libUser)
        {
            var sqlString = $"SELECT [CheckoutId], [CopyId], [LibUserId], [DueDate] FROM [LibCheckout] WHERE [LibUserId] = {libUser}";
            var checkoutList = _db.Query<LibCheckout>(sqlString).ToList();
            return checkoutList;
        }
    }
}