using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OrderRange
{
    class OrderRange
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Ingrese una colección de números separados por coma:");
            var cadena = Console.ReadLine();

            List<int> listNumeros = new List<int>();

            string listNumerosResponse;
            var lstCadena = cadena.Split(',');
            var iNumero = 0;
            for (int i = 0; i <= lstCadena.Length - 1; i++)
            {
                if (int.TryParse(lstCadena[i], out iNumero))
                {
                    listNumeros.Add(iNumero);
                }
            }
            listNumerosResponse = Build(listNumeros);

            Console.WriteLine(listNumerosResponse.ToArray());
            Console.ReadLine();
        }

        public static string Build(List<int> listNumeros)
        {
            string salida = string.Empty;
            string strPares = string.Empty;
            string strImpares = string.Empty;
            List<int> pares = new List<int>();
            List<int> impares = new List<int>();


            foreach (int numero in listNumeros)
            {

                if (Convert.ToBoolean((numero % 2 == 0 ? true : false)))
                {
                    pares.Add(numero);
                    pares.Sort();
                }
                else
                {
                    impares.Add(numero);
                    impares.Sort();
                }

            }

            foreach (var item in pares)
                strPares = strPares + item + ",";

            foreach (var item in impares)
                strImpares = strImpares + item + ",";

            strPares = strPares.Remove(strPares.Length - 1);
            strImpares = strImpares.Remove(strImpares.Length - 1);
            
            salida = "[" + strImpares + "]" + "[" + strPares + "]";

            return salida;
        }
    }
}
