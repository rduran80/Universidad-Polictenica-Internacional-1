using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Calculadora_Web
{
    public class ClsUsuario
    {
        //atributos
        private static string nombre { get; set; }
        private static int clave { get; set; }
        // constructor con parametros
        public ClsUsuario(string nombre, int clave)
        {
            ClsUsuario.nombre = nombre;
            ClsUsuario.clave = clave;
        
        }
        // constructor sin parametros
        public ClsUsuario() { }

        // metodos

        public static string GetNombre() 
        {
            return ClsUsuario.nombre;
        }

        public static void SetNombre(string nombre)
        {
            ClsUsuario.nombre = nombre;
        }

        public static int GetClave()
        {
            return ClsUsuario.clave;
        }

        public static void SetClave(int clave)
        {
            ClsUsuario.clave = clave;
        }
    }
}