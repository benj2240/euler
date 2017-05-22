using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  class Fibonacci
  {
    public static IEnumerable<int> Sequence()
    {
      var a = 0;
      var b = 1;
      int c;

      while (true)
      {
        yield return a;
        c = a;
        a = b;
        b = b + c;
      }
    }

    public static IEnumerable<int> Evens()
    {
      var a = 0;
      var b = 2;
      int c;

      while (true)
      {
        yield return a;
        c = a;
        a = b;
        b = 4 * b + c;
      }
    }
  }
}
