using Dojo2508.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dojo2508.Repository
{
    internal class BaseRepository<T> : IRepository<T> where T : BaseModel
    {

        List<T> entities;

        public BaseRepository()
        {
            this.entities = new List<T>();
        }

        public virtual string Create(T entity)
        {
            entities.Add(entity); 
            return $"Objeto Criado! id:{entity.Id}";
        }

        public virtual string Delete(int id)
        {
            return $"Objeto deletado! id:{id}";
        }

        public virtual List<T> Read()
        {
            return entities;
        }

        public virtual string Update(T entity)
        {
            return $"Objeto Alterado! id:{entity.Id}";
        }
    }
}
