using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace controlgastos
{
    public partial class Registrarse_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        String con = "Data Source=LT92;Initial Catalog=CONTROLGASTOS;Integrated Security=True";
        string usuario;
        protected void registbtn_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(usuarioReg.Text) || String.IsNullOrEmpty(contraseñaReg.Text) || String.IsNullOrEmpty(contraseñaRegCon.Text))
            {
                lblerror.Text = "Rellene todos los campos.";
            }
            else
            {
                ClsUsuario.setCorreo(usuarioReg.Text);
                ClsUsuario.setClave(contraseñaReg.Text);
                string querynecesario = "exec getusuariorepetido '" + usuarioReg.Text + "'";
                if (contraseñaReg.Text.Equals(contraseñaRegCon.Text))
                {
                    using (SqlConnection connection = new SqlConnection(con))
                    {
                        SqlCommand comandonecesario = new SqlCommand(querynecesario, connection);
                        connection.Open();
                        SqlDataReader reader = comandonecesario.ExecuteReader();
                        while (reader.Read())
                        {
                            string usuarioexistente = reader.GetString(0);
                            usuario = usuarioexistente.ToString();

                        }
                        reader.Close();
                    }
                }
                else
                {
                    lblerror.Text = "Las Contraseñas no coinciden.";
                }

                if (usuarioReg.Text == usuario)
                {
                    lblerror.Text = "Usuario repetido.";
                }
                else
                {
                    string s = System.Configuration.ConfigurationManager.ConnectionStrings["CONTROLGASTOSConnectionString"].ConnectionString;
                    SqlConnection conexion = new SqlConnection(s);
                    conexion.Open();
                    SqlCommand comando = new SqlCommand("insert into usuario VALUES('" + ClsUsuario.getCorreo() + "','" + ClsUsuario.getClave() + "'," + 1 + ")", conexion);
                    comando.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");

                    conexion.Close();
                }

            }

           

        }
    }
}