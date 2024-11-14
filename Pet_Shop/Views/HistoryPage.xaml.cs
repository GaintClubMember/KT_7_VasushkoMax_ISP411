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
    /// Логика взаимодействия для HistoryPage.xaml
    /// </summary>
    public partial class HistoryPage : Page
    {
        public Data.Partner _partner;
        public HistoryPage(Data.Partner partnerData)
        {
            InitializeComponent();

            try
            {
                _partner = partnerData;
                loadDataGrid();
            }
            catch(Exception ex)
            {
                return;
            }
        }

        private void loadDataGrid()
        {
            try
            {
                dataGrid.ItemsSource = Data.MasterPol_Entities.GetContext().Orders.Where(d => d.partnerId == _partner.id).ToList();
            }
            catch(Exception ex)
            {
                return;
            }
        }

        private void backBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Classes.Manager.FrameManager.Navigate(new Views.MainViewPage());
            }
            catch(Exception ex)
            {
                return;
            }
        }
    }
}
