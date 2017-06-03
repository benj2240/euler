using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  public static class IntegerExtensions
  {
    public static int SumOfMultiplesLessThan(this int factor, int cap)
    {
      var count = (cap - 1) / factor;
      return factor * count * (count + 1) / 2;
    }

    public static bool DivisibleBy(this int n, int d)
    {
      return n % d == 0;
    }

    public static bool Even(this int n)
    {
      // bitwise operations are slightly faster than modular division
      return (n & 1) == 0;
    }

    public static IEnumerable<int> PrimeFactors(this int n)
    {
      return ((long)n).PrimeFactors();
    }

    public static IDictionary<int, int> PrimeFactorPowers(this int n)
    {
      return n.PrimeFactors()
        .GroupBy(f => f)
        .ToDictionary(
          g => g.Key,
          g => g.Count());
    }

    public static IList<int> ReverseDigits(this int n)
    {
      var digits = new List<int>();

      while (n > 0)
      {
        int d = n % 10;
        digits.Add(d);
        n /= 10;
      }

      return digits;
    }

    public static List<int> Digits(this int n)
    {
      var digits = n.ReverseDigits();
      return digits.Reverse().ToList();
    }

    public static bool Palindromic(this int n)
    {
      // ReverseDigits is slightly faster than Digits,
      //   and for a palindrome test either will work.
      return n.ReverseDigits().Palindromic();
    }

    public static int LargestPalindromicMultiple(this int n, int previousBest)
    {
      for(int factor = n; factor > 0; factor -= 1)
      {
        int multiple = n * factor;

        if (multiple.Palindromic())
          return multiple;

        if (multiple < previousBest)
          break;
      }
      return 0;
    }

    /// <summary>
    /// The greatest n^p, where n^p is less than or equal to max
    /// </summary>
    public static int GreatestPowerUpTo(this int n, int max)
    {
      int p = (int)(Math.Log(max) / Math.Log(n));
      return (int)Math.Pow(n, p);
    }

    /// <summary>
    /// The total number of divisors of a number (not just primes)
    /// </summary>
    /// <remarks>
    /// Each divisor will be composed of some sub-collection of the prime
    ///   factors of <paramref name="n"/>. Each of those prime factors P will
    ///   be present 0-K times (where K is the max power of P that divides N).
    ///   Thus we have K + 1 options choices for each choice P.
    /// </remarks>
    public static int DivisorCount(this int n)
    {
      return n.PrimeFactorPowers()
        .Select(kvp => kvp.Value + 1)
        .Product();
    }
  }
}
