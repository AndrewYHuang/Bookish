using System;

namespace Bookish.DataAccess.Entities
{
    public class LibCheckout
    {
        public int CheckoutId { get; set; }
        public int CopyId { get; set; }
        public string LibUserId { get; set; }
        public DateTime DueDate { get; set; }
    }
}