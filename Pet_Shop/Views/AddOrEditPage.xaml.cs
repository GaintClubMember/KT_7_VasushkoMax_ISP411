using Pet_Shop.Data;
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
using System.Windows.Markup;
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

        Data.Partner _partner = new Data.Partner();

        public AddOrEditPage(Data.Partner partner)
        {
            InitializeComponent();
            try
            {
                _partner = partner;
                loadComboBox();
                if (_partner == null)
                {
                    flag = "add";
                }
                if (_partner != null)
                {
                    flag = "edit";
                }
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private void loadComboBox()
        {
            typeCombo.ItemsSource = Data.MasterPol_Entities.GetContext().CompanyType.ToList();
            typeCombo.SelectedIndex = 0;
        }

        private void fillPartner()
        {

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
                if (flag == "add")
                {
                    Data.Partner newPartner = new Data.Partner();

                    if (checkErrors() > 0)
                    {
                        return;
                    }
                    else
                    {
                        // fill blank newPartner and .Add(newPartner) and .SaveChanges()
                        string[] fioParts = fioBox.Text.Split(' ');

                        newPartner.lastname = fioParts[0];
                        newPartner.name = fioParts[1];
                        newPartner.surname = fioParts[2];

                        Data.CompanyName newNameCompany = new Data.CompanyName();
                        newNameCompany.name = companyNameBox.Text;
                        bool isCompanyNameExists = Data.MasterPol_Entities.GetContext().CompanyName.Any(d => d.name == companyNameBox.Text);
                        if (isCompanyNameExists == false)
                        {
                            Data.MasterPol_Entities.GetContext().CompanyName.Add(newNameCompany);
                            Data.MasterPol_Entities.GetContext().SaveChanges();
                        }
                        else
                        {
                            newPartner.companyName = newNameCompany.id;
                        }

                        newPartner.companyType = typeCombo.SelectedIndex - 1;
                        newPartner.phone = phoneBox.Text;
                        newPartner.email = emailBox.Text;
                        newPartner.rating = Convert.ToInt32(ratingBox.Text);

                        Data.MasterPol_Entities.GetContext().Partner.Add(newPartner);
                        Data.MasterPol_Entities.GetContext().SaveChanges();

                        MessageBox.Show($"Партнер был успешно Добавлен", "Успешно!", MessageBoxButton.OK, MessageBoxImage.Exclamation);

                        Classes.Manager.FrameManager.Navigate(new Views.MainViewPage());
                    }
                }
                if (flag == "edit")
                {
                    if (checkErrors() > 0)
                    {
                        return;
                    }
                    else
                    {
                        // fill partner and .SaveChanges()
                        MessageBox.Show($"Партнер был успешно Изменен", "Успешно!", MessageBoxButton.OK, MessageBoxImage.Exclamation);

                        Data.MasterPol_Entities.GetContext().SaveChanges();

                        Classes.Manager.FrameManager.Navigate(new Views.MainViewPage());
                    }
                }
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private int checkErrors()
        {
            StringBuilder errors = new StringBuilder();
            if (String.IsNullOrEmpty(companyNameBox.Text))
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
                if (fioParts.Length == 2) // warning!
                {
                    errors.AppendLine("Введите Отчество партнера");
                }
                else if(fioParts.Length > 3)
                {
                    errors.AppendLine("Вы ввели больше слов чем требуется в ФИО партнера");
                }
            }

            if (String.IsNullOrEmpty(emailBox.Text))
            {
                errors.AppendLine("Введите email партнера");
            }

            if (String.IsNullOrEmpty(phoneBox.Text))
            {
                errors.AppendLine("Введите телефон партнера");
            }
            else if (phoneBox.Text.Length > 11)
            {
                errors.AppendLine("Введенный номер телефона слишком длинный");
            }

            if (String.IsNullOrEmpty(ratingBox.Text))
            {
                errors.AppendLine("Введите рейтинг партнера");
            }

            if (errors.Length > 0)
            {
                MessageBox.Show($"{errors.ToString()}", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                return errors.Length;
            }
            else
            {
                return errors.Length;
            }
        }
    }
}
