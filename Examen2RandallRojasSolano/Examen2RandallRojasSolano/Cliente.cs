using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Examen2RandallRojasSolano
{
    public class Cliente
    {

        //atributos
        private static int cedula { get; set; }
        private static int telefono { get; set; }
        private static string nombre { get; set; }
        private static string direccion { get; set; }

        private static string tipo { get; set; }

        // get y set

        public static int getCedula()
        {
            return cedula;
        }
        public static void setCedula(int id)
        {
            cedula = id;
        }
        public static int getTelefono()
        {
            return telefono;
        }
        public static void setTelefono(int tel)
        {
            telefono = tel;
        }

        public static string getNombre()
        {
            return nombre;
        }
        public static void setNombre(string nomb)
        {
            nombre = nomb;
        }

        public static string getDireccion()
        {
            return direccion;
        }
        public static void setDireccion(string dir)
        {
            direccion = dir;
        }
        public static string getTipo()
        {
            return tipo;
        }
        public static void setTipo(string tip)
        {
            tipo = tip;
        }

    }
}