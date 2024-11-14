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

namespace Pet_Shop.Views
{
    /// <summary>
    /// Логика взаимодействия для MainViewPage.xaml
    /// </summary>
    public partial class MainViewPage : Page
    {
        public MainViewPage()
        {
            InitializeComponent();
            try
            {
                loadListView();
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private void loadListView()
        {
            listViewContainer.ItemsSource = Data.MasterPol_Entities.GetContext().Partner.ToList();
        }

        private void historyBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Classes.Manager.FrameManager.Navigate(new Views.HistoryPage()); // datacontext sender needed
            }
            catch(Exception ex)
            {
                return;
            }
        }

        private void editBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //Classes.Manager.FrameManager.Navigate(new Views.AddOrEditPage(sender as Button DataContext = new Data.Partner));
                Classes.Manager.FrameManager.Navigate(new Views.AddOrEditPage(null)); // datacontext sender needed
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private void addBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Classes.Manager.FrameManager.Navigate(new Views.AddOrEditPage(null));
            }
            catch (Exception ex)
            {
                return;
            }
        }
    }
}
