using System.Windows;

namespace RegisteredAppToURL.ClientWPF
{
    public partial class App : Application
    {
        void App_Startup(object sender, StartupEventArgs e)
        {
            bool runFromWeb = false;
            string parameter = string.Empty;

            for (int i = 0; i != e.Args.Length; ++i)
            {
                if (!string.IsNullOrWhiteSpace(e.Args[i]))
                {
                    runFromWeb = true;
                    parameter = e.Args[0];
                }
            }

            MainWindow mainWindow;

            if (runFromWeb)
            {
                mainWindow = new MainWindow(parameter);
                mainWindow.Show();
            }
            else
            {
                mainWindow = new MainWindow("Not from Web");
                mainWindow.Show();
            }
        }
    }
}