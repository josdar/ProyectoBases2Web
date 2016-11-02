using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace PESR
{
    public class ConnectionManager : IConnectionManager
    {
        List<Connection> connections = new List<Connection>();
        private static ConnectionManager singleton;

        public static ConnectionManager getSingleton()
        {
            if (singleton == null)
            {
                singleton = new ConnectionManager();
            }
            return singleton;
        }

        public ConnectionManager()
        {
            loadAll();
        }

        public List<Connection> getAll()
        {
            return connections;
        }

        public OracleConnection getOracleConnection(Connection con)
        {
            string oradb = $"User Id=system;Password=root;Data Source=" +
                "(DESCRIPTION =" +
                $"(ADDRESS = (PROTOCOL = TCP)(HOST = {con.ip})(PORT = 1521))" +
                $"(CONNECT_DATA =" +
                $"(SERVER = DEDICATED)" +
                $"(SERVICE_NAME = {con.serverName})));";
            OracleConnection oracleCon = new OracleConnection(oradb);
            return oracleCon;
        }

        public void save(Connection con)
        {
            connections.Add(con);
            saveAll();
        }

        private void saveAll()
        {
            XmlSerializer serializer = new XmlSerializer(typeof(List<Connection>));
            //var file = File.Create(@"C:\Users\JoseDavid\Documents\connections.xml");
            var file = File.Create(@"..\..\..\connections.xml");
            serializer.Serialize(file, connections);
            file.Close();
        }

        private void loadAll()
        {
            //if (!File.Exists(@"C:\Users\JoseDavid\Documents\connections.xml"))
            if (!File.Exists(@"..\..\..\connections.xml"))
            {
                connections = new List<Connection>();
            }
            else
            {
                XmlSerializer serializer = new XmlSerializer(typeof(List<Connection>));
                //var file = File.OpenRead(@"C:\Users\JoseDavid\Documents\connections.xml");
                var file = File.OpenRead(@"..\..\..\connections.xml");
                connections = (List<Connection>)serializer.Deserialize(file);
                file.Close();
            }
        }
    }
}
