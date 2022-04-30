using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace controlgastos
{
    public class ClsUsuario
    {

        //atributos
        private static int id { get; set; }
        private static string correo { get; set; }
        private static string clave { get; set; }

        // get y set

        public static string getCorreo()
        {
            return correo;
        }
        public static void setCorreo(string email)
        {
            correo = email;
        }
        public static string getClave()
        {
            return clave;
        }
        public static void setClave(string contraseña)
        {
            clave = contraseña;
        }

    }
}