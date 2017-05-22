﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  public class Solutions
  {
    /// <summary>
    /// The sum of all natural numbers less than <paramref name="max"/> which
    /// are divisible by 3 or 5 (or both)
    /// </summary>
    public static int Euler001(int max)
    {
      return 3.SumOfMultiplesLessThan(max)
        + 5.SumOfMultiplesLessThan(max)
        - 15.SumOfMultiplesLessThan(max);
    }

    /// <summary>
    /// The sum of all even Fibonacci numbers less than <paramref name="cap"/>
    /// </summary>
    public static int Euler002(int cap)
    {
      return Fibonacci.Evens()
        .TakeWhile(f => f < cap)
        .Sum();
    }

    /// <summary>
    /// The largest prime factor of <paramref name="n"/>
    /// </summary>
    public static int Euler003(long n)
    {
      return n.PrimeFactors().Last();
    }

    /// <summary>
    /// The largest palindromic number that is the product of two
    /// <paramref name="multiplicandSize"/>-digit numbers
    /// </summary>
    public static int Euler004(int multiplicandSize)
    {
      int largestMultiplicand = (int)Math.Pow(10, multiplicandSize) - 1;
      int smallestMultiplicand = (int)Math.Pow(10, multiplicandSize - 1);
      int largestPalindrome = 0;

      for (int factor = largestMultiplicand;
           factor >= smallestMultiplicand;
           factor -= 1)
      {
        if (factor * factor < largestPalindrome)
          break;

        int multiple = factor.LargestPalindromicMultiple(largestPalindrome);

        if (multiple > largestPalindrome)
          largestPalindrome = multiple;
      }

      return largestPalindrome;
    }

    /// <summary>
    /// The least common multiple of all natural numbers up to <paramref name="max"/>
    /// </summary>
    /// <remarks>
    /// The product of the max prime power for each prime up to <paramref name="max"/>
    /// For example, if max = 10, for p = 2, we will take 2^3 = 8
    /// Thus if max = 10, we calculate 8 * 9 * 5 * 7
    /// </remarks>
    public static int Euler005(int max)
    {
      return Primes.UpTo(max)
        .Select(p => p.GreatestPowerUpTo(max))
        .Aggregate(1, (product, x) => product * x);
    }

    /// <summary>
    /// From the square of the sum of all numbers up to <paramref name="max"/>,
    /// subtract the sum of the squares of all numbers up to <paramref name="max"/>
    /// </summary>
    /// <remarks>
    /// It is provable this value will be equal to (3n4 + 2n3 - 3n2 - 2n) / 12
    /// </remarks>
    public static int Euler006(int max)
    {
      return (3 * (int)Math.Pow(max, 4)
          + 2 * (int)Math.Pow(max, 3)
          - 3 * (int)Math.Pow(max, 2)
          - 2 * max) / 12;
    }

    /// <summary>
    /// The Nth prime number
    /// </summary>
    public static int Euler007(int n)
    {
      return Primes.Take(n).Last();
    }

    /// <summary>
    /// The greatest product of any <paramref name="digitCount"/> digits in
    ///   a static input string
    /// </summary>
    public static long Euler008(int digitCount)
    {
      return Input.Euler008
        .ToCharArray()
        .Select(c => (long)c - 48)// shame on you
        .EachConsecutive(digitCount)
        .Select(ds => ds.Product())
        .Max();
    }

    /// <summary>
    /// Returns A*B*C, where A^2 + B^2 = C^2 and A + B + C = <paramref name="sum"/>
    /// </summary>
    /// <param name="sum"></param>
    /// <returns></returns>
    public static int Euler009(int sum)
    {
      var triplet = Pythagoras.PrimitiveTriplets()
        .First(t => sum.DivisibleBy(t.Sum()));

      var multiple = sum / triplet.Sum();

      return triplet.Product() * multiple * multiple * multiple;
    }

    /// <summary>
    /// Returns the sum of all prime numbers up to <paramref name="max"/>
    /// </summary>
    public static long Euler010(int max)
    {
      return Primes.UpTo(max)
        .Select(n => (long)n)
        .Sum();
    }

    /// <summary>
    /// The greatest product of any <paramref name="count"/> numbers in a
    ///   straight line in a static input grid
    /// </summary>
    public static int Euler011(int count)
    {
      var arr = Input.Euler011;
      var best = 0;

      for (int i = 0; i < 20 - count; i += 1)
      {
        for (int j = 0; j < 20 - count; j += 1)
        {
          var horizontal = 1;
          var vertical = 1;
          var diagonalRight = 1;
          var diagonalLeft = 1;

          for (int m = 0; m < count; m += 1)
          {
            horizontal *= arr[i + m][j];
            vertical *= arr[i][j + m];
            diagonalRight *= arr[i + m][j + m];
            diagonalLeft *= arr[i + m][j + count - m - 1];
          }

          best = best > horizontal ? best : horizontal;
          best = best > vertical ? best : vertical;
          best = best > diagonalRight ? best : diagonalRight;
          best = best > diagonalLeft ? best : diagonalLeft;
        }
      }

      return best;
    }

    /// <summary>
    /// The first triangle number with more than <paramref name="count"/> divisors
    /// </summary>
    /// <param name="count"></param>
    /// <returns></returns>
    public static int Euler012(int count)
    {
      return Triangle.Sequence()
        .First(t => t.DivisorCount() > count);
    }
  }
}