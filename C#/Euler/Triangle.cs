using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  public class Triangle
  {
    public static IEnumerable<int> Sequence()
    {
      var sum = 0;
      var n = 1;
      while (true)
      {
        sum += n;
        n += 1;
        yield return sum;
      }
    }
  }
}
