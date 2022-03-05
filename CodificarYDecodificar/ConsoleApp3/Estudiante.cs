using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp3
{
    class Estudiante
    {

       public int[] notas = new int [5];
        float promedio = 0f;

        public void Leernotas() 
        {
            for (int i = 0; i < notas.Length; i++)
            {
                Console.WriteLine("Digite la nota:");
                notas[i] = int.Parse(Console.ReadLine());
            }
        
        }

        //public float Promedio() 
        //{
        //    for (int i = 0; i < notas.Length; i++)
        //    {
        //        promedio += notas[i];
        //    }
        //    promedio = (promedio / notas.Length);
        //    return promedio;
        //}


    }
}
