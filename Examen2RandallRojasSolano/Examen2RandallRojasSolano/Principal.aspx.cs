using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen2RandallRojasSolano
{
    public partial class Principal : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void seteos()
        {
            Cliente.setNombre(tnombre.Text);
            Cliente.setCedula(Int32.Parse(tcedula.Text));
            Cliente.setTelefono(Int32.Parse(ttelefono.Text));
            Cliente.setDireccion(tdireccion.Text);
            Response.Redirect("Registro.aspx");
        }
        protected void bagua_Click(object sender, EventArgs e)
        {
            Cliente.setTipo("Agua");
            seteos();
        }

        protected void bcable_Click(object sender, EventArgs e)
        {
            Cliente.setTipo("Cable");
            seteos();
        }

        protected void btelefono_Click(object sender, EventArgs e)
        {
            Cliente.setTipo("Teléfono");
            seteos();
        }

        protected void belectricidad_Click(object sender, EventArgs e)
        {

            Cliente.setTipo("Electricidad");
            seteos();
        }
    }
}