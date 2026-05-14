using System.Windows;
using System.Windows.Input;
using CommunityToolkit.Mvvm.Input;

using Voxstrap.Resources;

using Microsoft.Win32;

namespace Voxstrap.UI.ViewModels.Installer
{
    public class CompletionViewModel
    {
        public ICommand LaunchSettingsCommand => new RelayCommand(LaunchSettings);

        public ICommand LaunchRobloxCommand => new RelayCommand(LaunchRoblox);

        public event EventHandler<NextAction>? CloseWindowRequest;

        private void LaunchSettings() => CloseWindowRequest?.Invoke(this, NextAction.LaunchSettings);

        private void LaunchRoblox() => CloseWindowRequest?.Invoke(this, NextAction.LaunchRoblox);
    }
}
