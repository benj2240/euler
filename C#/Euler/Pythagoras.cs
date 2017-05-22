using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  class Pythagoras
  {
    /// <summary>
    /// Generates all Pythagorean triplets, using Euclid's formula
    /// </summary>
    public static IEnumerable<int[]> PrimitiveTriplets()
    {
      // When m grows beyond this value, the hypotenuse calculation will overflow
      var stop = Math.Pow(int.MaxValue, 0.5) - 1;

      for(int m = 2; m < stop; m += 1)
      {
        // The sum m + n must be odd.
        //   If m is even, start at n = 1.
        //   If m is odd, start at n = 2
        int startingValue = 1 + (m & 1);

        // n must be less than m
        for (int n = startingValue; n < m; n += 2)
        {
          if (Coprime(m, n))
          {
            yield return new int[3] { 2 * m * n, m * m - n * n, m * m + n * n };
          }
        }
      }
    }

    private static bool Coprime(int a, int b)
    {
      return GreatestCommonDivisor(a, b) == 1;
    }

    /// <summary>
    /// The Binary GCD algorithm
    /// </summary>
    private static int GreatestCommonDivisor(int a, int b)
    {
      if (a == b)
        return a;

      if (a == 0 || b == 0)
        return 0;

      if ((a & 1) == 0) // a is even
      {
        if ((b & 1) == 0) // b is even
          return GreatestCommonDivisor(a >> 1, b >> 1) << 1;
        else
          return GreatestCommonDivisor(a >> 1, b); // divide a by 2 and continue
      }
      else // a is odd
      {
        if ((b & 1) == 0) // b is even
          return GreatestCommonDivisor(a, b >> 1); // divide b by 2 and continue
        else // both odd
        {
          if (a > b)
            return GreatestCommonDivisor((a - b) >> 1, b);
          else
            return GreatestCommonDivisor((b - 1) >> 1, a);
        }
       }
    }
  }
}
