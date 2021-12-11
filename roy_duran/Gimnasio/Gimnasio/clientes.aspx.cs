using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gimnasio
{
    public partial class clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCliente.Insert(); 
            }
            catch (Exception)
            {

                throw;
            }
           
        }

        protected void btnactualizar_Click(object sender, EventArgs e)
        {
            SqlCliente.Update();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCliente.Delete();
        }
    }
}