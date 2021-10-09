using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UPIClase3Funcioneprocedimientos
{
    class Clsempleado
    {
        //ATRIBUTOS
        string[] cedula = new string[5];
        string[] nombre = new string[5];
        int pos;

        //CONSTRUCTOR
        public Clsempleado() // constructor 
        {
            pos = 0;
        }
        public Clsempleado(int posicion) // constructor 
        {
            pos = posicion;
        }

        public void InicializarVectores()
        {
            for (int i = 0; i < cedula.Length; i++)
            {
                cedula[i] = "";
                nombre[i] = "";
            }
            Console.WriteLine("Arreglos inicializados...");

        }
        public void AgregarEmpleado()
        {
            char opcion;
            do
            {
                Console.WriteLine("Digite su nombre: ");
                nombre[pos] = Console.ReadLine();
                Console.WriteLine("Digite su cedula");
                cedula[pos] = Console.ReadLine();
                pos++;
                Console.WriteLine("Desea continuar s/n");
                opcion = Convert.ToChar(Console.ReadLine());
            } while (opcion!='n');
        }

        public void Reporte() {
            Console.WriteLine("**** REPORTE DE EMPLEADOS *****");
            Console.WriteLine("NOMBRE       CEDULA");
            Console.WriteLine("--------------------");
            for (int i = 0; i < cedula.Length; i++)
            {
                Console.WriteLine($"{nombre[i]}    {cedula[i]}");
            }
            Console.WriteLine("--------------------");
        }
        public void ConsultarEmpleado() {
            Boolean existe = false;

            Console.WriteLine("Digite la cedula: ");
            string documento = Console.ReadLine();
            for (int i = 0; i < cedula.Length; i++)
            {
                if (documento.Equals(cedula[i]))
                {
                    Console.WriteLine($"El nombre del empleado es {nombre[i]}");
                    existe = true;
                }
            }
            if (!existe)
            {
                Console.WriteLine("EL Empleado no existe");
                Console.WriteLine();
                }
            }
        

        public void ModificarEmpleado() {

            Boolean existe = false;

            Console.WriteLine("Digite la cedula: ");
            string documento = Console.ReadLine();
            byte indice = 0;
            while (indice<= cedula.Length && !documento.Equals(cedula[indice]))
            {
                indice++;
            }

            if (indice > cedula.Length)
            {
                Console.WriteLine(" Cedula no existe");
            }
            else
            {
                Console.WriteLine("Digite un nuevo nombre:");
                nombre[indice] = Console.ReadLine();
                Console.WriteLine("Digite una nueva cedula");
                cedula[indice] = Console.ReadLine();
         
  
        }
    }
        public void BorrarEmpleado() { }
    }
}

