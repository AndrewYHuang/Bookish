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
        private readonly IDbConnection _db = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

        public SquirrelWhisperer()
        {
        }

        public List<Book> GetBookList()
        {
            const string sqlString = "SELECT TOP 100 [BookId], [Title], [Isbn], [Authors] FROM [Books]";
            var bookList = _db.Query<Book>(sqlString).ToList();
            return bookList;
        }
    }
}