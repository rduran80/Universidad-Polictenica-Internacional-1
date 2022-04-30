using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace controlgastos
{
    public partial class Login3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regbtn_Click(object sender, EventArgs e)
        {
                Response.Redirect("Registrarse.aspx");
            
        }

        protected void logbtn_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(usuarioLog.Text) || String.IsNullOrEmpty(contraseñaLog.Text))
            {
                lblerror.Text = "Porfavor Rellene todos los campos";
            }
            else
            {
                try
                {
                    if (IsValid)
                    {

                        ClsUsuario.setCorreo(usuarioLog.Text);
                        ClsUsuario.setClave(contraseñaLog.Text);

                        string s = System.Configuration.ConfigurationManager.ConnectionStrings["CONTROLGASTOSConnectionString"].ConnectionString;
                        SqlConnection conexion = new SqlConnection(s);
                        conexion.Open();
                        SqlCommand comando = new SqlCommand("select usuario, clave from usuario where usuario = '" + ClsUsuario.getCorreo() + "'" + " and clave = '" + ClsUsuario.getClave() + "'", conexion);
                        SqlDataReader registro = comando.ExecuteReader();

                        if (registro.Read())
                        {

                            Response.Redirect("Consultatran.aspx");
                        }
                        else
                        {
                            lblerror.Text = "Usuario o contraseña Incorrectos";
                        }

                        conexion.Close();

                    }
                }
                catch (SqlException ex)
                {
                    lblerror.Text = ex.Message;
                }

            }
            
        }
        
    }
}