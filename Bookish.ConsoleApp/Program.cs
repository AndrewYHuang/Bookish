using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bookish.DataAccess.Sql;
using Bookish.DataAccess.Entities;

namespace Bookish.ConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            var sqlQuerier = new SquirrelWhisperer();
            var bookList = sqlQuerier.GetBooks();
            foreach (var book in bookList)
            {
                Console.WriteLine(new string('*', 20));
                Console.WriteLine("Book ID: " + book.BookId.ToString());
                Console.WriteLine("Title: " + book.Title.ToString());
                Console.WriteLine("ISBN: " + book.Isbn.ToString());
                Console.WriteLine("Authors: " + book.Authors.ToString());
                Console.WriteLine("Number of Copies: " + book.NumberOfCopies.ToString());
                Console.WriteLine("Checked out by:");
                var checkoutList = sqlQuerier.GetCheckoutsOfBook(book);
                foreach (var checkout in checkoutList)
                {
                    Console.WriteLine(checkout.LibUserId + " due " + checkout.DueDate.ToShortDateString());
                }
                Console.WriteLine(new string('*', 20));
            }

            Console.ReadLine();

        }
    }
}
