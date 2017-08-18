using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChangeString
{
    class ChangeString
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Ingrese una cadena de texto:");
            var cadena = Console.ReadLine();
            Console.WriteLine(Build(cadena));
            Console.ReadLine();
        }

        public static string Build(string cadena)
        {
            string salida = "";
            bool esTexto;
            char letra;
            foreach (char c in cadena)
            {
                letra = c;
                if (letra == 'z')
                {
                    letra = 'a';
                    salida = salida + letra.ToString();
                    continue;
                }
                else if (letra == 'Z')
                {
                    letra = 'A';
                    salida = salida + letra.ToString();
                    continue;
                }

                esTexto = letra.ToString().Any(x => char.IsLetter(x));
                if (esTexto)
                {
                    letra++;
                    if (letra.ToString().Any(char.IsUpper))
                    {
                        salida = salida + (letra++).ToString().ToUpper();
                    }
                    else
                    {
                        salida = salida + (letra++).ToString();
                    }
                }
                else
                {
                    salida = salida + c.ToString();
                }
            }
            return salida;
        }
    }
}
