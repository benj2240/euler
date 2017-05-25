using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  public static class LongExtensions
  {
    public static bool DivisibleBy(this long n, int d)
    {
      return n % d == 0;
    }

    public static bool Even(this long n)
    {
      return (n & 1) == 0;
    }

    public static IEnumerable<int> PrimeFactors(this long n)
    {
      var divisor = 2;
      while (divisor * divisor <= n)
      {
        while (n.DivisibleBy(divisor))
        {
          yield return divisor;
          n /= divisor;
        }
        divisor += 1;
      }

      if (n > 1)
        yield return (int)n; // Possibility of an overflow here :/
    }
  }
}
