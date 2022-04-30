using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace controlgastos
{
    public partial class WebForm1 : System.Web.UI.Page
    {
         public void Querys(string comandos)
        {
            string querynecesario = comandos;
            SqlCommand comandonecesario = new SqlCommand(querynecesario, Dbcon.obtenerConexion());
            SqlDataAdapter datosnecesario = new SqlDataAdapter(comandonecesario);
            DataTable dtnecesario = new DataTable();
            datosnecesario.Fill(dtnecesario);
            GridView1.DataSource = dtnecesario;
            GridView1.DataBind();
            Dbcon.obtenerConexion().Close();
        }
        protected void btnfiltrar_Click(object sender, EventArgs e)
        {
            string fecha1 = calusuario.SelectedDate.ToString("yyyy-MM-dd");
            string fecha2 = calusuario1.SelectedDate.ToString("yyyy-MM-dd");
            if (ddusuario.SelectedIndex == 0)
            {
                if (fecha1 == "0001-01-01" || fecha2 == "0001-01-01")
                {
                    lblerror.Text = "Porfavor digite fechas";
                }
                else
                {
                    GridView1.DataSource = Dbcon.Querysprueba("exec filtrousuarioingreso '" + fecha1 + "','" + fecha2 + "','" + ClsUsuario.getCorreo() + "'");
                    GridView1.DataBind();
                    GridView2.DataSource = Dbcon.Querysprueba("exec totalingresousuario @fecha1='" + fecha1 + "',@fecha2='" + fecha2 + "',@usuario='" + ClsUsuario.getCorreo() + "'");
                    GridView2.DataBind();
                }

            }
            else if (ddusuario.SelectedIndex == 1)
            {
                if (fecha1 == "0001-01-01" || fecha2 == "0001-01-01")
                {
                    lblerror.Text = "Porfavor digite fechas";
                }
                else
                {
                    GridView1.DataSource = Dbcon.Querysprueba("exec filtrousuariogasto '" + fecha1 + "','" + fecha2 + "','" + ClsUsuario.getCorreo() + "'");
                    GridView1.DataBind();
                    GridView2.DataSource = Dbcon.Querysprueba("exec totalgastousuario @fecha1='" + fecha1 + "',@fecha2='" + fecha2 + "',@usuario='" + ClsUsuario.getCorreo() + "'");
                    GridView2.DataBind();
                }

            }
            else if (ddusuario.SelectedIndex == 2)
            {
                if (fecha1 == "0001-01-01" || fecha2 == "0001-01-01")
                {
                    lblerror.Text = "Porfavor digite fechas";
                }
                else
                {
                    GridView1.DataSource = Dbcon.Querysprueba("exec filtrousuarioambos '" + fecha1 + "','" + fecha2 + "','" + ClsUsuario.getCorreo() + "'");
                    GridView1.DataBind();
                    GridView2.DataSource = Dbcon.Querysprueba("exec totalambosusuario @fecha1='" + fecha1 + "',@fecha2='" + fecha2 + "',@usuario='" + ClsUsuario.getCorreo() + "'");
                    GridView2.DataBind();
                }
            }
            else if (ddusuario.SelectedIndex == 3)
            {
                GridView1.DataSource = Dbcon.Querysprueba("exec filtrototalusuario '" + ClsUsuario.getCorreo() + "'");
                GridView1.DataBind();
                GridView2.DataSource = Dbcon.Querysprueba("exec totalusuario '" + ClsUsuario.getCorreo() + "'");
                GridView2.DataBind();

            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}