using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BUENAVISTA
{
    public partial class clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            SqlUsuario.Insert();
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            SqlUsuario.Delete();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlUsuario.Update();
        }
    }
}