using System;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using EFCoreGenRep.DAL.DataContext;
using Microsoft.EntityFrameworkCore;

namespace EFCoreGenRep.DAL.Concrete
{
    public class GenericRepository<T> : IGenericRepository<T> where T : class
    {
        protected MyDbContext MyDb { get; set; }

        public GenericRepository()
        {
            MyDb = new MyDbContext();
        }

        public IQueryable<T> GetAll()
        {
            return MyDb.Set<T>();
        }

        public IQueryable<T> Get(Expression<Func<T, bool>> expression)
        {
            return MyDb.Set<T>().Where(expression);
        }

        public void Insert(T entity)
        {
            MyDb.Set<T>().Add(entity);
        }

        public void Delete(T entity)
        {
            MyDb.Set<T>().Remove(entity);
        }

        public void Update(T entity)
        {
           MyDb.Set<T>().Update(entity);
           MyDb.SaveChanges();
        }

        public void SaveChanges()
        {
            MyDb.SaveChanges();
        }
    }
}