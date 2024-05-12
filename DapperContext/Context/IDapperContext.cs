using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DapperRepositories.Context
{
    public interface IDapperContext
    {
        IDbConnection CreateConnection();
        void CloseConnection(IDbConnection connection);
    }
}
