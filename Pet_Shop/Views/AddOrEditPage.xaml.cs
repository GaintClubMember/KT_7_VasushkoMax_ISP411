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
    /// Логика взаимодействия для AddOrEditPage.xaml
    /// </summary>
    public partial class AddOrEditPage : Page
    {

        public string flag = "default";

        public AddOrEditPage(Data.Partner partner)
        {
            InitializeComponent();
            try
            {
                if (partner == null)
                {
                    flag = "add";
                }
                if(partner != null)
                {
                    flag = "edit";
                }

                StringBuilder errors = new StringBuilder();
                if (flag == "add")
                {
                    // adding new partner
                    Data.Partner newPartner;

                    if (String.IsNullOrEmpty(typeCombo.Text))
                    {
                        errors.AppendLine("Выберите тип компании");
                    }
                    if (String.IsNullOrEmpty(compnayNameBox.Text))
                    {
                        errors.AppendLine("Введите название компании");
                    }
                    if (String.IsNullOrEmpty(fioBox.Text))
                    {
                        errors.AppendLine("Введите ФИО партнера");
                    }
                    else // warning
                    {
                        string[] fioParts = fioBox.Text.Split(' ');
                        if (fioParts.Length == 0) // warning!
                        {
                            errors.AppendLine("Введите Фамилию партнера");
                        }
                        if (fioParts.Length == 1) // warning!
                        {
                            errors.AppendLine("Введите Имя партнера");
                        }
                        if (fioParts.Length >= 3) // warning!
                        {
                            errors.AppendLine("Введите Отчество партнера");
                        }
                    }


                    // continue with checks
                    // continue with checks
                    // continue with checks
                    // continue with checks



                    if (errors.Length > 0)
                    {
                        MessageBox.Show($"{errors.ToString()}", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    else
                    {
                        MessageBox.Show($"Новый партнер был успешно добавлен", "Успешно!", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                    }
                }
                if(flag == "edit")
                {
                    // editing existing partner




                    if (errors.Length > 0)
                    {
                        MessageBox.Show($"{errors.ToString()}", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    else
                    {
                        MessageBox.Show($"Партнер был успешно изменен", "Успешно!", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                    }
                }

            }
            catch (Exception ex)
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

        private void saveBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {

            }
            catch (Exception ex)
            {
                return;
            }
        }
    }
}
