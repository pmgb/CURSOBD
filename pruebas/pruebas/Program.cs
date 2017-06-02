using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pruebas
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] misImpares = getImpares(1000, 1010);          
            Console.ReadKey();
        }

        static int[] getImpares(int limiteInferior, int limiteSuperior)
        {
            int tamano = ((limiteSuperior - limiteInferior) / 2) + 1;
            int[] impares = new int[tamano];
            int i = limiteInferior;
            int numerosImparesAdicionados = 0;
            while (i < limiteSuperior)
            {
                if ((i % 2) != 0) // ES IMPAR
                {
                    impares[numerosImparesAdicionados] = i;
                    numerosImparesAdicionados++;
                }
                i++;
            }
            return impares;
        }










        static void muestraPares(int limiteInferior, int limiteSuperior)
        {
            // LISTAR LOS Nº PARES ENTRE 0 Y 30
            int[] pares = new int[limiteSuperior];
            for (int i = limiteInferior; i < pares.Length; i++)
            {
                pares[i] = i;
                if ((pares[i] % 2) == 0) // es par
                {
                    Console.WriteLine(pares[i]);
                }
            }
        }

        

        static void Test1()
        {
            string saludo = "HOLA MUNDO!!";
            Console.WriteLine(saludo);
            Console.WriteLine(saludo + " cruel");
            // trato de usar la clase Humano
            //string texto  = "";
            Humano humano = new Humano();
            humano.setAltura(184);
            Console.WriteLine("Altura del humano: " + humano.getAltura());
            humano.setAltura(100);
            Console.WriteLine("Altura del humano: " + humano.getAltura());
            Console.ReadKey();
        }

        static void Test2()
        {
            FaunaTerrestre fauna = new FaunaTerrestre();
            Pinguino pinguino = new Pinguino();
            Pato pato = new Pato();
            pato.EsCarnivoro = false;
            Pato pato2 = new Pato(false);
            Pato pato3 = new Pato()
            {
                EsCarnivoro = false
            };
            Console.WriteLine(pato.EsCarnivoro);
        }

        static void Test3()
        {
            //Console.WriteLine("Número de parámetro es: " + args.Length);
            //for (int i = 0; i < args.Length; i++)
            //{
            //    Console.WriteLine(args[i]);
            //}
        }
    }
}


