using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UPIClase3Funcioneprocedimientos
{
    class Program
    {
        static string nombre = "Priscilla"; // variable Globales
        static float salario = 5000;
        static void Main(string[] args)
        {
            Clsmenu.principal();
        }

         static void Empleado(float monto) // un procedimiento (void)
        {
            string nombre = "Oldemar"; // variable locales
            salario = (7000*2); // variable local
            Console.WriteLine($"El  {nombre} tiene un salario de: {monto}");
            Console.WriteLine($"El  {Program.nombre} tiene un salario de: {salario}");
        }
    }
}
