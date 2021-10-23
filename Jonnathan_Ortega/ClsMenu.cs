using System;
using System.Collections.Generic;
using System.Text;

namespace Examen1_Jonnathan_Ortega
{
    class ClsMenu
    {
        static int opcion;

        static ClsServicio servicio = new ClsServicio();

        public ClsMenu()
        {
            opcion = 0;
        }

        public ClsMenu(int op)
        {
            opcion = 0;
        }

        public static void menuPrincipal()
        {
            do
            {
                Console.WriteLine("***** MENU PRINCIPAL ******");
                Console.WriteLine("1- Iniciar Vectores");
                Console.WriteLine("2- Realizar Pagos");
                Console.WriteLine("3- Consultar Pagos");
                Console.WriteLine("4- Modificar Pagos");
                Console.WriteLine("5- Eliminar Pagos");
                Console.WriteLine("6- Submenu Reportes");
                Console.WriteLine("7- Salir");
                Console.WriteLine("Ingrese una opcion: ");
                opcion = Convert.ToInt32(Console.ReadLine());

                switch (opcion)
                {
                    case 1:
                        servicio.InicializarVectores();
                        break;
                    case 2:
                        servicio.RealizarPago();
                        break;
                    case 3:
                        servicio.ConsultarPagos();
                        break;
                    case 4:
                        servicio.ModificarPago();
                        break;
                    case 5:
                        servicio.EliminarPagos();
                        break;
                    case 6:
                        submenu();
                        break;
                    case 7:
                        break;
                    default:
                        break;
                }
            } while (opcion != 7);
        }

        public static void submenu()
        {
            do
            {
                Console.WriteLine("***** SUBMENU REPORTES ******");
                Console.WriteLine("1- Ver todos los Pagos");
                Console.WriteLine("2- Ver Pagos por tipo de Servicio");
                Console.WriteLine("3- Ver Pagos por codigo de caja");
                Console.WriteLine("4- Ver Dinero Comisionado por servicios");
                Console.WriteLine("5- Regresar Menu Principal");
                Console.WriteLine("Ingrese una opcion: ");
                opcion = Convert.ToInt32(Console.ReadLine());

                switch (opcion)
                {
                    case 1:
                        servicio.ReporteTodosPagos();
                        break;
                    case 2:
                        servicio.ReportePagoPorServicio();
                        break;
                    case 3:
                        servicio.ReportePagoPorCaja();
                        break;
                    case 4:
                        servicio.RerporteDineroComisionado();
                        break;
                    case 5:
                        break;
                    default:
                        break;
                }
            } while (opcion != 5);
        }
    }
}
