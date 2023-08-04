using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Xml;
using System.Collections.ObjectModel;
using MGM_HavaDurum.Durum;
using System.Net;
using System.Windows.Media.Imaging;

namespace MGM_HavaDurum
{
    /// <summary>
    /// MainWindow.xaml etkileşim mantığı
    /// </summary>
    public partial class MainWindow : Window
    {
        private ObservableCollection<WeatherData> weatherList = new ObservableCollection<WeatherData>();
        public MainWindow()
        {
            InitializeComponent();
            ServicePointManager.SecurityProtocol = (SecurityProtocolType)3072;     
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            XmlDocument data = new XmlDocument();
            try
            {
                data.Load("https://www.mgm.gov.tr/FTPDATA/analiz/sonSOA.xml");
                XmlElement root = data.DocumentElement;
                XmlNodeList nodes = root.SelectNodes("sehirler");

                foreach (XmlNode node in nodes)
                {
                    string ili = node["ili"].InnerText;
                    string durum = node["Durum"].InnerText;
                    string derece = node["Mak"].InnerText;
                    weatherList.Add(new WeatherData { Il = ili, Durum = durum, Derece = derece });
                }
                datagrid.ItemsSource = weatherList;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hata oluştu: " + ex.Message, "Hata", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void DataGrid_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            lbSantigrat.Visibility = Visibility.Visible;
            lbDurum.Visibility = Visibility.Visible;
            lbDerece.Visibility = Visibility.Visible;
            lbSehir.Visibility = Visibility.Visible;
            if (datagrid.SelectedItem != null)
            {
                WeatherData selectedWeatherData = (WeatherData)datagrid.SelectedItem;
                //selectedWeatherData.SelectedWeatherData = selectedWeatherData.Durum;

                lbSehir.Content = selectedWeatherData.Il;
                lbDurum.Content = selectedWeatherData.Durum;
                lbDerece.Content = selectedWeatherData.Derece;

                string durum = selectedWeatherData.Durum.ToLower();         
                if (durum.Contains("parçalı ve az bulutlu"))
                { 
                    imgDurum_parcali.Visibility = Visibility.Visible;
                    imgDurum_bulutlu.Visibility = Visibility.Hidden;
                    imgDurum_gunesli.Visibility = Visibility.Hidden;
                    imgDurum_yagmurlu.Visibility = Visibility.Hidden;
                }
                    
                else if (durum.Contains("parçalı bulutlu"))
                {
                    imgDurum_parcali.Visibility = Visibility.Hidden;
                    imgDurum_bulutlu.Visibility = Visibility.Visible;
                    imgDurum_gunesli.Visibility = Visibility.Hidden;
                    imgDurum_yagmurlu.Visibility = Visibility.Hidden;
                }
                    
                else if (durum.Contains("az bulutlu ve açık"))
                {
                    imgDurum_parcali.Visibility = Visibility.Hidden;
                    imgDurum_bulutlu.Visibility = Visibility.Hidden;
                    imgDurum_gunesli.Visibility = Visibility.Visible;
                    imgDurum_yagmurlu.Visibility = Visibility.Hidden;
                }
                    
                else if(durum.Contains("parçalı bulutlu, öğle saatlerinden sonra yerel olmak üzere sağanak ve yer yer gök gürültülü sağanak yağışlı"))
                {
                    imgDurum_parcali.Visibility = Visibility.Hidden;
                    imgDurum_bulutlu.Visibility = Visibility.Hidden;
                    imgDurum_gunesli.Visibility = Visibility.Hidden;
                    imgDurum_yagmurlu.Visibility = Visibility.Visible;
                }
                else
                {
                    imgDurum_parcali.Visibility = Visibility.Hidden;
                    imgDurum_bulutlu.Visibility = Visibility.Hidden;
                    imgDurum_gunesli.Visibility = Visibility.Hidden;
                    imgDurum_yagmurlu.Visibility = Visibility.Visible;
                }
                    
            }
        }
    
        private void Image_MouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            this.Close();
        }
    }
}
