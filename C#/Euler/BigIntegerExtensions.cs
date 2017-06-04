using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  public static class BigIntegerExtensions
  {
    public static BigInteger Factorial(this BigInteger number)
    {
      return Enumerable.Range(1, (int)number)
        .Aggregate(new BigInteger(1), (p, n) => p * n);
    }
  }
}
