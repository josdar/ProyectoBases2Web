using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PESR
{
    public interface IConnectionManager
    {
        void save(Connection con);
        List<Connection> getAll();
        OracleConnection getOracleConnection(Connection con);
    }
}
