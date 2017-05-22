using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  public static class ICollectionExtensions
  {
    public static IEnumerable<T> Last<T>(this ICollection<T> sequence, int count)
    {
      return sequence.Skip(Math.Max(sequence.Count - count, 0));
    }
  }
}
