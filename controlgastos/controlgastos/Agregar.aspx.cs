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
    public partial class Agregar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        String con = "Data Source=LT92;Initial Catalog=CONTROLGASTOS;Integrated Security=True";
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
        public void Querysagregar()
        {
            string fecha1 = cal1.SelectedDate.ToString("yyyy-MM-dd");
            string querynecesario = "exec idpersona " + "'" + ClsUsuario.getCorreo() + "'";
            int id = 0;

            if (fecha1 == "0001-01-01")
            {
                lblerror.Text = "Escoja una fecha por favor.";
            }
            else if (String.IsNullOrEmpty(tmonto.Text) || String.IsNullOrEmpty(tdescripcion.Text))
            {
                lblerror.Text = "Porfavor Rellene todos los campos.";
            }
            else
            {
                using (SqlConnection connection = new SqlConnection(con))
                {
                    SqlCommand comandonecesario = new SqlCommand(querynecesario, connection);
                    connection.Open();
                    SqlDataReader reader = comandonecesario.ExecuteReader();
                    while (reader.Read())
                    {
                        int idrelacion = reader.GetInt32(0);
                        id = idrelacion;

                    }

                    reader.Close();
                }
                string agregar = "exec agregartran " + Int32.Parse(tmonto.Text) + ",'" + dtipo.Text + "','" + tdescripcion.Text + "','" + cal1.SelectedDate.ToString("yyyy-MM-dd") + "'," + id + "," + 1;
                GridView1.DataSource = Dbcon.Querysprueba(agregar);
                GridView1.DataBind();
                lblerror.Text = "Transacción agregada correctamente.";
                Dbcon.obtenerConexion().Close();
            }
            
        }

        protected void bagregar_Click(object sender, EventArgs e)
        {
            Querysagregar();
        }
    }
}