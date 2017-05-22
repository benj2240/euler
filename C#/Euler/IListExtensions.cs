using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  public static class IListExtensions
  {
    public static bool Palindromic<T>(this IList<T> list) where T : IEquatable<T>
    {
      int end = list.Count() - 1;
      for (int pad = 0; pad <= end / 2; pad += 1)
      {
        if (!list[pad].Equals(list[end - pad]))
          return false;
      }
      return true;
    }
  }
}
