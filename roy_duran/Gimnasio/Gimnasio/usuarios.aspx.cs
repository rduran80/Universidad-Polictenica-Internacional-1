using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gimnasio
{
    public partial class usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlUsuario.Insert();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlUsuario.Delete();
        }

        protected void btnactualizar_Click(object sender, EventArgs e)
        {
            SqlUsuario.Update();
        }
    }
}