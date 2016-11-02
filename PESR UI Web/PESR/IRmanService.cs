using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PESR
{
    public interface IRmanService
    {
        void backup(Policy policy);
        void restore();
        void recover();
    }
}
