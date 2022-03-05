using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp3
{
    class menu
    {
       static int opcion;
        Estudiante alumno = new Estudiante();

        public  void Menu()
        {
            do
            {
                Console.WriteLine("1- Ingresar notas");
                Console.WriteLine("2- Calcular promedio");
                Console.WriteLine("3- salir");
                
              opcion =  int.Parse(Console.ReadLine());
                int sumatoria = 0;
                switch (opcion)
                {
                    case 1: alumno.Leernotas(); break;
                    case 2:
                        for (int i = 0; i < 5; i++)
                        {
                            sumatoria += alumno.notas[i];
                        }
                          int total = (sumatoria/5);
                        Console.WriteLine("El promedio es {0}", total);
                        
                        ; break;
                    case 3: break;
                }
            } while (opcion != 3 );

        }
        public void SubmenuMenu1()
        {
            do
            {
                Console.WriteLine("2-1- Submenu 1");
                Console.WriteLine("2-2- Submenu 2");
                Console.WriteLine("2-3- Regresar");

                opcion = int.Parse(Console.ReadLine());
                switch (opcion)
                {
                    case 1: break;
                    case 2: break;
                    case 3: Menu();
                        break;
                }
            } while (opcion != 3);

        }

    }
}
