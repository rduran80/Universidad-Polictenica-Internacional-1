using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Examen2RandallRojasSolano
{
    public partial class Registro : System.Web.UI.Page
    {
        double subtotal, total,monto, descuento, montodescuento,iva = 0;

        protected void bvolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }

        protected void bsalvar_Click(object sender, EventArgs e)
        {
            if (tmonto.Text.Length == 0)
            {
                lerror.Text = "Por favor inserte todos los datos";
            }
            else
            {
                lerror.Text = "Datos Ingresados Correctamente!";

                sqldatos.Insert();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            lservicio.Text = Cliente.getTipo();
            lnombre.Text = Cliente.getNombre();
            lcedula.Text = Cliente.getCedula().ToString();
            ltelefono.Text = Cliente.getTelefono().ToString();
            ldirección.Text = Cliente.getDireccion();
        }

        protected void bagregar_Click(object sender, EventArgs e)
        {
            monto = double.Parse(tmonto.Text);
            descuento = double.Parse(tdescuento.Text)/100;
            montodescuento = (monto * descuento);
            subtotal = monto-montodescuento;
            iva = subtotal * 0.13;
            total = subtotal + iva;
            lmonto.Text = monto.ToString();
            ldescuento.Text = montodescuento.ToString();
            lsubtotal.Text = subtotal.ToString();
            liva.Text = iva.ToString();
            ltotal.Text = total.ToString();


        }
    }
}