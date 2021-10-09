using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UPIClase3Funcioneprocedimientos
{
    class Clsmenu
    {

        static Clsempleado Empleado = new Clsempleado();

        public static void principal()
        {
            int opcion = 0;
            do
            {
                Console.WriteLine("****** MENU PRINCIPAL ******");
                Console.WriteLine("1- Inicializar Arreglos");
                Console.WriteLine("2- Agregar Empleado");
                Console.WriteLine("3- Consultar Empleado");
                Console.WriteLine("4- Reporte de Empleados");
                Console.WriteLine("5- Salir");
                Console.WriteLine("6- modificar empleado");
                Console.WriteLine("Digite una opcion:" + (opcion = (int.Parse((Console.ReadLine())))));
                switch (opcion)
                {
                    case 1:
                        Empleado.InicializarVectores();
                        break;
                    case 2:
                        Empleado.AgregarEmpleado();
                        break;
                    case 3: Empleado.ConsultarEmpleado(); break;
                    case 4:
                        Empleado.Reporte();

                        break;
                    case 5: break;
                    case 6:
                        SubmenuModificar(); break;
                    default:
                        break;
                }

            } while (opcion != 5);

        }



        public static void SubmenuModificar()
        {
            int opcion = 0;
            do
            {
                Console.WriteLine("****** SUB MENU ******");
                Console.WriteLine("1- Modificar nombre");
                Console.WriteLine("2- Modificar la cedula");
                Console.WriteLine("3- Modificar el promedio");
                Console.WriteLine("4- Salir");

                Console.WriteLine("Digite una opcion:" + (opcion = (int.Parse((Console.ReadLine())))));
                switch (opcion)
                {
                    case 1: Empleado.ModificarEmpleado();
                        


                        break;
                    case 2:
                     
                        break;
                    case 3: break;
                    case 4:principal();

                        break;
  
                    default:
                        break;
                }

            } while (opcion != 5);

        }
    }

}
