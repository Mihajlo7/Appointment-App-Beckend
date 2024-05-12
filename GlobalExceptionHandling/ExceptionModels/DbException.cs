using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GlobalExceptionHandling.ExceptionModels
{
    public class DbException : Exception
    {
        public DbException() { }

        public DbException(string message) : base(message) { }

        public DbException(string message, Exception innerException) : base(message, innerException) { }
    }
}
