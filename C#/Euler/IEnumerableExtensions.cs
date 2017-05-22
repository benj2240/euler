using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  public static class IEnumerableExtensions
  {
    /// <summary>
    /// All Substrings of size <paramref name="windowSize"/> in <paramref name="sequence"/>
    /// </summary>
    /// <example>
    /// [1, 2, 3, 4, 5].EachConsecutive(3)
    /// [1, 2, 3], [2, 3, 4], [3, 4, 5]
    /// </example>
    public static IEnumerable<IList<T>> EachConsecutive<T>(
      this IEnumerable<T> sequence,
      int windowSize)
    {
      var enumerator = sequence.GetEnumerator();
      var window = new List<T>();
      var exhausted = false;

      // Get the list up to size
      for (int i = 0; i < windowSize; i += 1)
      {
        if (enumerator.MoveNext())
        {
          window.Add(enumerator.Current);
        }
        else
        {
          exhausted = true;
          break;
        }
      }

      if (!exhausted)
      {
        yield return window.ToArray();
        while (enumerator.MoveNext())
        {
          window.RemoveAt(0);
          window.Add(enumerator.Current);
          yield return window.ToArray();
        }
      }
    }

    public static long Product(this IEnumerable<long> numbers)
    {
      return numbers.Aggregate((a, b) => a * b);
    }

    public static int Product(this IEnumerable<int> numbers)
    {
      return numbers.Aggregate(1, (a, b) => a * b);
    }
  }
}
