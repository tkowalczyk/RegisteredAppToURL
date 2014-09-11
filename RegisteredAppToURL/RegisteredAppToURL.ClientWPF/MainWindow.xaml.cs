using System.Windows;

namespace RegisteredAppToURL.ClientWPF
{
    public partial class MainWindow : Window
    {
        public MainWindow(string parameter)
        {
            InitializeComponent();

            lInfo.Content = parameter;
        }
    }
}