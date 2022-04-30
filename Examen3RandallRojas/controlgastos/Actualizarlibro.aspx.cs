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
    public partial class BorrarActualizar : System.Web.UI.Page
    {
        String con = "Data Source=LT92;Initial Catalog=BIBLIOTECA;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Queryactualizar()
        {
            string id1 = "";
            string querynecesario = "exec idpersona " + "'" + ClsUsuario.getCorreo() + "'";
            string fecha1 = cal1.SelectedDate.ToString("yyyy-MM-dd");
            string id = "";
           
            if (String.IsNullOrEmpty(tmonto.Text) || String.IsNullOrEmpty(tdescripcion.Text) || String.IsNullOrEmpty(tcodigo1.Text))
            {
                lblerror.Text = "Porfavor Rellene los campos";
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
                        id = idrelacion.ToString();

                    }
                    reader.Close();
                }
                using (SqlConnection connection = new SqlConnection(con))
                {
                    SqlCommand comandonecesario = new SqlCommand(querynecesario1, connection);
                    connection.Open();
                    SqlDataReader reader = comandonecesario.ExecuteReader();
                    while (reader.Read())
                    {
                        int idrelacion = reader.GetInt32(0);
                        id1 = idrelacion.ToString();

                    }
                    reader.Close();
                }
                if (id1 != id)
                {
                    lblerror.Text = "No puedes actualizar una transacción que no es tuya.";
                }
                else
                {
                    if (fecha1 == "0001-01-01")
                    {
                        string agregar = "exec actualizartransinfecha " + Int32.Parse(tmonto.Text) + ",'" + dtipo.Text + "','" + tdescripcion.Text + "'," + Int32.Parse(tcodigo1.Text);
                        GridView1.DataSource = Dbcon.Querysprueba(agregar);
                        cal1.SelectedDates.Clear();
                        lblerror.Text = "Transacción Actualizada correctamente";

                    }
                    else
                    {
                        string agregar = "exec actualizartran " + Int32.Parse(tmonto.Text) + ",'" + dtipo.Text + "','" + tdescripcion.Text + "','" + cal1.SelectedDate.ToString("yyyy-MM-dd") + "'," + Int32.Parse(tcodigo1.Text);
                        GridView1.DataSource = Dbcon.Querysprueba(agregar);
                        GridView1.DataBind();
                        Querys("exec selectporusuario " + "'" + ClsUsuario.getCorreo() + "'");
                        cal1.SelectedDates.Clear();
                        lblerror.Text = "Transacción Actualizada Correctamente.";
                    }
                }
            }
            
            

        }

        public void Queryborrar()
        {
            string id = "";
            if (String.IsNullOrEmpty(tcodigo.Text))
            {
                lblerror.Text = "Porfavor, Digíte el código de la transacción.";

            }
            else
            {
                string agregar = "exec escondertran " + Int32.Parse(tcodigo.Text);
                string querynecesario = "exec idpersona " + "'" + ClsUsuario.getCorreo() + "'";
                using (SqlConnection connection = new SqlConnection(con))
                {
                    SqlCommand comandonecesario = new SqlCommand(querynecesario, connection);
                    connection.Open();
                    SqlDataReader reader = comandonecesario.ExecuteReader();
                    while (reader.Read())
                    {
                        int idrelacion = reader.GetInt32(0);
                        id = idrelacion.ToString();

                    }
                    reader.Close();
                }
                string querynecesario1 = "exec idrelaciontran " + tcodigo.Text;
                string id1 = "";
                using (SqlConnection connection = new SqlConnection(con))
                {
                    SqlCommand comandonecesario = new SqlCommand(querynecesario1, connection);
                    connection.Open();
                    SqlDataReader reader = comandonecesario.ExecuteReader();
                    while (reader.Read())
                    {
                        int idrelacion = reader.GetInt32(0);
                        id1 = idrelacion.ToString();

                    }
                    reader.Close();
                }
                if (id1 != id)
                {
                    lblerror.Text = "No puedes eliminar una transacción que no es tuya.";
                }
                else
                {
                    Querys(agregar);
                    Dbcon.obtenerConexion().Close();
                    lblerror.Text = "Transacción eliminada correctamente.";

                }
            }
           
        }
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

        protected void bactualizar_Click(object sender, EventArgs e)
        {
            Queryactualizar();
        }

        protected void bborrar_Click(object sender, EventArgs e)
        {
            Queryborrar();
        }
    }
}