using Dojo2508.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dojo2508.Repository
{
    internal interface IRepository<T> where T : BaseModel
    {
        string Create(T entity);
        List<T> Read();
        string Update(T entity);
        string Delete(int id);
    }
}
