using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PESR
{
    public interface IDatabaseService
    {
        void shutdown();
        void startup();
        bool isArchive();
        void setArchive(string path, string format);
    }
}
