using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bookish.DataAccess.Sql;

namespace Bookish.DataAccess.Entities
{
    public class Book
    {
        public int BookId { get; set; }
        public string Title { get; set; }
        public string Isbn { get; set; }
        public string Authors { get; set; }

        public int NumberOfCopies
        {
            get
            {
                var sqlQuerier = new SquirrelWhisperer();
                var copyList = sqlQuerier.GetCopiesOfBook(this);
                return copyList.Count();
            }
        }
    }
}
