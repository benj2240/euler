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

    /// <summary>
    /// The element of the input sequence which produces the maximum output
    ///   for a given mapping function
    /// </summary>
    /// <typeparam name="TElement">The type of the input sequence</typeparam>
    /// <typeparam name="TValue">The comparable output type of the mapping</typeparam>
    /// <remarks>Returns the earlier element in the case of a tie</remarks>
    /// <example>
    ///   [-4, 0, 1, 3].MaxBy(x => x * x) returns -4
    /// </example>
    public static TElement MaxBy<TElement, TValue>(
      this IEnumerable<TElement> sequence,
      Func<TElement, TValue> selector
      ) where TValue : IComparable<TValue>
    {
      TElement bestElement = default(TElement);
      TValue maxValue = default(TValue);
      TValue thisValue;
      bool hasValue = false;

      foreach (TElement thisElement in sequence)
      {
        if (hasValue)
        {
          thisValue = selector(thisElement);
          if (thisValue.CompareTo(maxValue) > 0)
          {
            bestElement = thisElement;
            maxValue = selector(thisElement);
          }
        }
        else
        {
          bestElement = thisElement;
          maxValue = selector(thisElement);
          hasValue = true;
        }
      }

      if (hasValue)
      {
        return bestElement;
      }
      else
      {
        throw new ArgumentException("Sequence contains no elements");
      }
    }
  }
}
