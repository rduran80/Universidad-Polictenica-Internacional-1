using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace controlgastos
{
    public class Dbcon
    {

        public static SqlConnection obtenerConexion()
        {
            String con = "Data Source=LT92;Initial Catalog=CONTROLGASTOS;Integrated Security=True";
            SqlConnection conexion = new SqlConnection();
            conexion.ConnectionString = con;
            conexion.Open();
            return conexion;



        }
        public static DataTable Querysprueba(string comandos)
        {
            string querynecesario = comandos;
            SqlCommand comandonecesario = new SqlCommand(querynecesario, Dbcon.obtenerConexion());
            SqlDataAdapter datosnecesario = new SqlDataAdapter(comandonecesario);
            DataTable dtnecesario = new DataTable();
            datosnecesario.Fill(dtnecesario);
            Dbcon.obtenerConexion().Close();
            return dtnecesario;
        }

    }
}