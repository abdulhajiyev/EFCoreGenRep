using EFCoreGenRep.Models;
using Microsoft.EntityFrameworkCore;

namespace EFCoreGenRep.DAL.DataContext
{
    public class MyDbContext : DbContext
    {
        public DbSet<Product> Products { get; set; }
        public DbSet<Category> Categories { get; set; }

        override protected void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Data Source=RAIDER\SQLEXPRESS;Initial Catalog=EFCoreGenRep;Integrated Security=True");
            base.OnConfiguring(optionsBuilder);
        }
        
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
    }
}