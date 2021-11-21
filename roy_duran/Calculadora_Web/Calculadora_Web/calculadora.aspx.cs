using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculadora_Web
{
    public partial class claculadora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsuario.Text = "Bienvenido " + ClsUsuario.GetNombre() + " Hoy es " + DateTime.Now;
                
                }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btnContactenos_Click(object sender, EventArgs e)
        {
            Response.Redirect("contactenos.aspx");
        }

        protected void RadioButton() 
        {
            ClsCalculadora operacion = new ClsCalculadora(float.Parse(txtNum1.Text), float.Parse(txtNum2.Text));

            if (RadioButton1.Checked)
            {
                operacion.Sumar();
            }
            else if (RadioButton2.Checked)
            {
                operacion.Restar();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            RadioButton();
        }
    }
}