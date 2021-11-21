using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculadora_Web
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsUsuario usuario = new ClsUsuario(txtUsuario.Text, int.Parse(txtClave.Text));

            try
            {
                if (ClsUsuario.GetNombre().Equals("Roy") && ClsUsuario.GetClave() == 123)
                {
                    Response.Redirect("calculadora.aspx");
                }
                else 
                {
                    lblMensaje.Text = "Usuario o clave incorrectos";
                }
            }
            catch (Exception)
            {

                lblMensaje.Text = "Usuario o clave incorrectos";
            }

            
        }
    }
}