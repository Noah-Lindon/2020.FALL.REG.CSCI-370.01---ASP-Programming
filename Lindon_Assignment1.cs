using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lindon_Assignment1
{
    class Program
    {
        static void Main(string[] args)
        {
            // Figure 1
            int[] weights = new int[10];
            weights[0] = 70;
            weights[3] = 65;
            weights[6] = 80;
            weights[9] = 85;

            for (int i = 0; i <= 4; i++)
            {
                Console.WriteLine();
                for (int j = i + 1; j <= 4; j++)
                {
                    Console.Write("{0}{1} ", i, j);
                }
            }

            // Figure 2
            string str = " ABCDEFGHIJK ";
            Console.WriteLine(str.Substring(0, 8));
        }
    }
}
