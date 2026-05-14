using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Voxstrap.UI.ViewModels.Settings;

namespace Voxstrap.UI.Elements.Settings.Pages
{
    /// <summary>
    /// Interaction logic for VoxstrapPage.xaml
    /// </summary>
    public partial class VoxstrapPage
    {
        public VoxstrapPage()
        {
            DataContext = new VoxstrapViewModel();
            InitializeComponent();
        }
    }
}
