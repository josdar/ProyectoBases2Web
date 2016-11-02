using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PESR
{
    public class Connection
    {

        public string serverName { get; set; }
        public string ip { get; set; }
        public string userName { get; set; }
        public string password { get; set; }
        public List<Policy> policies { get; set; }
    }
}