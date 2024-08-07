using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Geographic.Startup))]
namespace Geographic
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
