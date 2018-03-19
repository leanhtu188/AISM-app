using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(aism_app.Startup))]
namespace aism_app
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
