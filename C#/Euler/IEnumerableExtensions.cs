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

    public static TElement MaxBy<TElement, TValue>(
      this IEnumerable<TElement> sequence,
      Func<TElement, TValue> selector
      ) where TValue : IComparable<TValue>
    {
      TElement bestElement = default(TElement);
      TValue maxValue = default(TValue);
      TValue thisValue;
      int state = 0;

      foreach (TElement thisElement in sequence)
      {
        switch (state)
        {
          case 0:
            // first element of the sequence; initialize best and max
            bestElement = thisElement;
            maxValue = selector(thisElement);
            state = 1;
            break;
          case 1:
            // subsequent elements; best and max exist
            thisValue = selector(thisElement);
            if (thisValue.CompareTo(maxValue) > 0)
            {
              bestElement = thisElement;
              maxValue = thisValue;
            }
            break;
        }
      }

      // In the case of an empty input sequence, would it be more
      // idiomatic to return default(TElement), or throw an Exception?
      // I'm going to go with the former for now at least.
      return bestElement;
    }
  }
}
