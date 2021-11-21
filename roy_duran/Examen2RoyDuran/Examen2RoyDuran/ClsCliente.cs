using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Examen2RoyDuran
{
    public class ClsCliente
    {
        private string nombre;
        private string cedula;
        private string telefono;
        private string direccion;

        private ClsCliente() { }

        private ClsCliente(string nombre, string cedula, string telefono, string direccion)
        {
            this.nombre = nombre;
            this.cedula = cedula;
            this.telefono = telefono;
            this.direccion = direccion;

        }







    }
}