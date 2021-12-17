using System;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace EFCoreGenRep
{
    public interface IGenericRepository<T> where T : class
    {
        IQueryable<T> GetAll();
        IQueryable<T> Get(Expression<Func<T, bool>> expression);
        
        void Insert(T entity);
        void Delete(T entity);
        void Update(T entity);
        void SaveChanges();
    }
}