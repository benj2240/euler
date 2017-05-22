using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  public class Primes
  {
    /// <summary>
    /// All primes up to (and possibly including) <paramref name="max"/>
    /// </summary>
    /// <remarks>
    /// Method: Sieve of Sundaram
    /// </remarks>
    public static IEnumerable<int> UpTo(int max)
    {
      var n = (max - 1) / 2;
      var seeds = new bool[n + 1];

      for (int j = 1; j <= n / 3; j += 1)
      {
        for (int i = 1;
             i <= j && i + j + 2 * i * j <= n;
             i += 1)
        {
          seeds[i + j + 2 * i * j] = true;
        }
      }

      yield return 2;
      for (int i = 1; i <= n; i += 1)
      {
        if (!seeds[i])
          yield return 2 * i + 1;
      }
    }
    
    /// <summary>
    /// Spits out primes forever. Much slower than <see cref="UpTo(int)"/>
    /// </summary>
    /// <remarks>
    /// MUCH slower. For real, use UpTo if possible, or Take otherwise.
    /// Back-of-the-envelope 250x slower than Take, for 10k primes
    /// </remarks>
    public static IEnumerable<int> Generate()
    {
      yield return 2;
      var primes = new List<int> { 2 };
      var candidate = 3;
      while (true)
      {
        if (!primes.Any(p => candidate.DivisibleBy(p)))
        {
          yield return candidate;
          primes.Add(candidate);
        }
        candidate += 2;
      }
    }

    /// <summary>
    /// The first <paramref name="count"/> prime numbers
    /// </summary>
    /// <returns>
    /// Should be faster than <see cref="Generate"/>.Take(count)
    /// Some extra work is done, because the upper bound on pi(n)
    ///   provided by li(n) is imprecise.
    /// See: Prime Counting Function, Prime Number Theorem
    /// </returns>
    public static IEnumerable<int> Take(int count)
    {
      int upperBound;

      if (count < 6)
        upperBound = 11;
      else
        upperBound = (int)(count * Math.Log(count * Math.Log(count)));

      return Primes.UpTo(upperBound).Take(count);
    }
  }
}
