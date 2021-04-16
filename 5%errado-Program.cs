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

            int quant, i, a;

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
                            solteiros.Add(g.Numero);

                            if (solteiros.Count() == 2)
                            {
                                Console.WriteLine(solteiros[0] + " " + solteiros[1]);
                            }
                        
                    }

                }
            }

            Console.ReadKey();
        }
    }
}
