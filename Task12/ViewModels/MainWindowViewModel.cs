using Task12.Commands;
using Task12.Model;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows;
using ClosedXML.Excel;

namespace Task12.ViewModels
{
    public class MainWindowViewModel : INotifyPropertyChanged
    {
        private ObservableCollection<Incident> _incidents;
    private string _searchText;
        private string _title;
        private string _description;

        public ObservableCollection<Incident> Incidents
        {
            get { return _incidents; }
            set
            {
                _incidents = value;
                OnPropertyChanged();
            }
        }

        public string SearchText
        {
            get { return _searchText; }
            set
            {
                _searchText = value;
                OnPropertyChanged();
            }
        }

        public string Title
        {
            get { return _title; }
            set
            {
                _title = value;
                OnPropertyChanged();
            }
        }

        public string Description
        {
            get { return _description; }
            set
            {
                _description = value;
                OnPropertyChanged();
            }
        }

        public ICommand AddIncidentCommand { get; }
        public ICommand ExportToExcelCommand { get; }
        public ICommand DeleteIncidentCommand { get; }

        public MainWindowViewModel()
        {
            Incidents = new ObservableCollection<Incident>()
        {
            new Incident { Title = "Обрыв лески", Description = "Рыбак потерял крупную рыбу из-за обрыва лески", DataReported = DateTime.Now, Status = "Рекомендована замена снастей" },
            new Incident { Title = "Сломанное удилище", Description = "Удилище сломалось при попытке вытащить крупный улов", DataReported = DateTime.Now, Status = "Ожидается поставка нового оборудования" },
            new Incident { Title = "Незаконный лов", Description = "Обнаружен браконьерский лов в запрещенный сезон", DataReported = DateTime.Now, Status = "Передано в рыбнадзор" },
            new Incident { Title = "Отсутствие клева", Description = "Отсутствие клева из-за изменений погодных условий", DataReported = DateTime.Now, Status = "Рекомендована смена места лова" },
            new Incident { Title = "Пропажа снастей", Description = "С лодки пропал ящик со снастями", DataReported = DateTime.Now, Status = "Расследование продолжается" },
            new Incident { Title = "Зацеп за корягу", Description = "Дорогостоящий воблер зацепился за корягу и потерян", DataReported = DateTime.Now, Status = "Поиски не увенчались успехом" },
            new Incident { Title = "Конфликт на водоеме", Description = "Возник спор между рыбаками из-за места лова", DataReported = DateTime.Now, Status = "Конфликт урегулирован" },
            new Incident { Title = "Повреждение лодки", Description = "Лодка получила пробоину о подводные камни", DataReported = DateTime.Now, Status = "На ремонте" },
            new Incident { Title = "Неожиданный шторм", Description = "Рыбаки застигнуты врасплох внезапным штормом", DataReported = DateTime.Now, Status = "Все благополучно вернулись" },
            new Incident { Title = "Рекордный улов", Description = "Поймана редкая рыба необычно крупного размера", DataReported = DateTime.Now, Status = "Отправлена на экспертизу" }
        };

            AddIncidentCommand = new RelayCommand(AddIncident);
            ExportToExcelCommand = new RelayCommand(ExportToExcel);
            DeleteIncidentCommand = new RelayCommand(DeleteIncident);
        }

        private void AddIncident(object parameter)
        {
            if (!string.IsNullOrEmpty(Title) && !string.IsNullOrEmpty(Description))
            {
                Incidents.Add(new Incident
                {
                    Title = Title,
                    Description = Description,
                    DataReported = DateTime.Now,
                    Status = "Новый"
                });

                Title = string.Empty;
                Description = string.Empty;
            }
        }

        private void ExportToExcel(object parameter)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "Excel Files|*.xlsx";
            if (saveFileDialog.ShowDialog() == true)
            {
                using (var workbook = new XLWorkbook())
                {
                    var worksheet = workbook.Worksheets.Add("Incidents");

                    // Заголовки
                    worksheet.Cell(1, 1).Value = "Заголовок";
                    worksheet.Cell(1, 2).Value = "Описание";
                    worksheet.Cell(1, 3).Value = "Дата";
                    worksheet.Cell(1, 4).Value = "Статус";

                    // Данные
                    for (int i = 0; i < Incidents.Count; i++)
                    {
                        worksheet.Cell(i + 2, 1).Value = Incidents[i].Title;
                        worksheet.Cell(i + 2, 2).Value = Incidents[i].Description;
                        worksheet.Cell(i + 2, 3).Value = Incidents[i].DataReported;
                        worksheet.Cell(i + 2, 4).Value = Incidents[i].Status;
                    }

                    workbook.SaveAs(saveFileDialog.FileName);
                }

                MessageBox.Show("Данные успешно экспортированы в Excel!", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }



        private void DeleteIncident(object parameter)
        {
            if (parameter is Incident incidentToDelete)
            {
                Incidents.Remove(incidentToDelete);
            }
        }


        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}

