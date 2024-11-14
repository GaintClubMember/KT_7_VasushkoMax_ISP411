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
        Data.Partner _partnerData;

        public AddOrEditPage(Data.Partner partner)
        {
            InitializeComponent();
            try
            {
                DataContext = partner;
                _partnerData = partner;
                _partner = partner;
                loadComboBox();
                if (_partner == null)
                {
                    flag = "add";
                }
                if (_partner != null)
                {
                    flag = "edit";
                    fillFromPartner();
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
                            newPartner.companyName = newNameCompany.id;
                        }
                        else
                        {
                            newPartner.companyName = newNameCompany.id;
                        }

                        newPartner.companyType = typeCombo.SelectedIndex + 1;
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
                        string[] fioParts = fioBox.Text.Split(' ');

                        _partnerData.lastname = fioParts[0];
                        _partnerData.name = fioParts[1];
                        _partnerData.surname = fioParts[2];

                        Data.CompanyName newNameCompany = new Data.CompanyName();
                        newNameCompany.name = companyNameBox.Text;
                        bool isCompanyNameExists = Data.MasterPol_Entities.GetContext().CompanyName.Any(d => d.name == companyNameBox.Text);
                        if (isCompanyNameExists == false)
                        {
                            Data.MasterPol_Entities.GetContext().CompanyName.Add(newNameCompany);
                            Data.MasterPol_Entities.GetContext().SaveChanges();
                            _partnerData.companyName = newNameCompany.id;
                        }
                        else
                        {
                            _partnerData.companyName = newNameCompany.id;
                        }

                        _partnerData.companyType = typeCombo.SelectedIndex + 1;
                        _partnerData.phone = phoneBox.Text;
                        _partnerData.email = emailBox.Text;
                        _partnerData.rating = Convert.ToInt32(ratingBox.Text);

                        MessageBox.Show($"Партнер был успешно Изменен", "Успешно!", MessageBoxButton.OK, MessageBoxImage.Exclamation);


                        Classes.Manager.FrameManager.Navigate(new Views.MainViewPage());
                    }
                }
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private void fillFromPartner()
        {
            try
            {
                string fioForBox = _partner.lastname + " " + _partner.name + " " + _partner.surname;
                fioBox.Text = fioForBox;
                companyNameBox.Text = _partner.CompanyName1.name.ToString();
                typeCombo.SelectedIndex = _partner.companyType - 1;
                emailBox.Text = _partner.email.ToString();
                phoneBox.Text = _partner.phone.ToString();
                ratingBox.Text = _partner.rating.ToString();

            }
            catch(Exception ex)
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
