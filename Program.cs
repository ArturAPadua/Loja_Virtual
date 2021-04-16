using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Testes
{
    class Program
    {
        static void Main(string[] args)
        {

            // desafio 2290
            // answer: Closed

            int quant, i, a, n1, n2;

            while (true)
            {
                quant = int.Parse(Console.ReadLine());

                if (quant == 0)
                {
                    break;
                }
                else
                {
                    List<int> entrada = new List<int>();

                    List<int> solteiros = new List<int>();

                    string[] vet = Console.ReadLine().Split(' ');

                    for (i = 0; i < quant; i++)
                    {
                        a = int.Parse(vet[i]);
                        entrada.Add(a);
                    }

                    var group = entrada.GroupBy(b => b).Select(e => new
                    {
                        Numero = e.Key,
                        Contagem = e.Count()
                    });


                    foreach (var g in group)
                    {
                        if (g.Contagem % 2 == 0)
                        {

                        }
                        else
                        {
                            solteiros.Add(g.Numero);

                            if (solteiros.Count() == 2)
                            {
                                n1 = solteiros[0];
                                n2 = solteiros[1];
                                Console.WriteLine(n1 + " " + n2);
                            }
                        }
                    }
                    Console.ReadKey();
                }
            }

        }
    }
}
