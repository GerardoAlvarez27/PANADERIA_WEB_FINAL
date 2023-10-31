using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
using System.Windows.Forms;

namespace panaderia_web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
        OracleConnection bdConex = new OracleConnection("DATA SOURCE = xe ; PASSWORD = 1234; USER ID = FINALWEB");
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
    

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            bdConex.Open();
            Server.Transfer("Contact.aspx");
            bdConex.Close();
        }
    }
}