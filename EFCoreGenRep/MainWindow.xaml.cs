using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using EFCoreGenRep.DAL.Concrete;
using EFCoreGenRep.Models;

namespace EFCoreGenRep
{
    public partial class MainWindow : Window
    {
        public GenericRepository<Product> Products { get; set; } = new GenericRepository<Product>();
        public GenericRepository<Category> Categories { get; set; } = new GenericRepository<Category>();
        public MainWindow()
        {
            InitializeComponent();
            
            DataGrid.ItemsSource = Products.GetAll().Select(x=> new {x.Id, Product = x.Name, x.Price, Category = x.Category.Name, x.CategoryId}).ToList();
        }
    }
}