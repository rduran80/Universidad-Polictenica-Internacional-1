using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp3
{
     class FuncionesdeCadena
    {
        public static void  principal() 
        {
            String nombre;
            byte k;

            String[] letras = new string[] { "a", "b", "c", "d", "e", "f", "g","h","i","j","k","l","m","n","o" ,"p","q","r","s","t","u","v","w","x","y","z"};
            String[] enigma = new string[] { "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p" };
            String codigo = "";

            Console.WriteLine("Digite su nombre:"); nombre = Console.ReadLine();

            /// Codificar palabra

            foreach (char letra in nombre) // buscar letras en la palabra
            {
                for (int i = 0; i < letras.Length; i++) // convertir a codigo
                {
                    if (letras[i].Equals(letra.ToString()))
                    {
                        codigo += enigma[i];
                        break;
                    }
                }
            }

            foreach (char codigo2 in nombre) // buscar enigma en la palabra
            {
                for (int i = 0; i < enigma.Length; i++) // invertir de codigo
                {
                    if (enigma[i].Equals(enigma.ToString()))
                    {
                        codigo += letras[i];
                        break;
                    }
                }
            }

            Console.WriteLine("codigo: {0}",codigo);
            Console.Read();

            if (nombre.Contains("@") & nombre.Contains('.'))
            {
                int tamano = nombre.Length;
                int pos= nombre.IndexOf('@');
                String dominio = nombre.Substring(pos, (tamano-pos));
                Console.WriteLine($"dominio: {dominio}");
            }
          
            else
            {
                Console.WriteLine(" esto no es un correo Electronico");
            }
            Console.WriteLine();


            

            Console.Read();
        
        }
    }

   
}
