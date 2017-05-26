using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  public static class NumberTranslationExtensions
  {
    /// <summary>
    /// Translate a number into written english, eg 8 => "eight"
    /// </summary>
    public static string ToEnglish(this int n, int triplets = 0)
    {
      string suffix = LARGE_NAMES[triplets];

      if (n <= 19)
      {
        return SMALL_NAMES[n] + suffix;
      }
      else if (n <= 99)
      {
        var tensName = TENS_NAMES[n / 10];
        var ones = n % 10;
        if (ones == 0)
          return tensName + suffix;
        else
          return tensName + "-" + SMALL_NAMES[ones] + suffix;
      }
      else if (n <= 999)
      {
        var hundredsName = SMALL_NAMES[n / 100] + " hundred";
        var tens = n % 100;
        if (tens == 0)
          return hundredsName + suffix;
        else
          return hundredsName + " and " + tens.ToEnglish(triplets);
      }
      else
      {
        var otherNames = (n / 1000).ToEnglish(triplets + 1);
        var thisTriplet = n % 1000;
        if (thisTriplet == 0)
          return otherNames;
        else
          return otherNames + ", " + thisTriplet.ToEnglish(triplets);
      }
    }

    private static string[] SMALL_NAMES = new string[]
    {
      "zero",
      "one",
      "two",
      "three",
      "four",
      "five",
      "six",
      "seven",
      "eight",
      "nine",
      "ten",
      "eleven",
      "twelve",
      "thirteen",
      "fourteen",
      "fifteen",
      "sixteen",
      "seventeen",
      "eighteen",
      "nineteen"
    };

    private static string[] TENS_NAMES = new string[]
    {
      null,
      null,
      "twenty",
      "thirty",
      "forty",
      "fifty",
      "sixty",
      "seventy",
      "eighty",
      "ninety"
    };

    private static string[] LARGE_NAMES = new string[]
    {
      "",
      " thousand",
      " million",
      " billion"
    };
  }
}
