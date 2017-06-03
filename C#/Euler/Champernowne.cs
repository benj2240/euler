using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Euler
{
  public class Champernowne
  {
    public static int Digit(int place)
    {
      int numberSize = 1;
      int numberMagnitude = 1;
      int maxIndexForNumberSize = 10;
      int offset = 0;
      while (true)
      {
        if (place < maxIndexForNumberSize)
        {
          var offsetPlace = place + offset;
          var number = offsetPlace / numberSize;
          var digitInNumber = numberSize - offsetPlace % numberSize - 1;
          return number.ReverseDigits().ElementAt(digitInNumber);
        }
        else
        {
          numberSize += 1;
          numberMagnitude *= 10;
          offset += numberMagnitude;
          checked { maxIndexForNumberSize += numberSize * 9 * numberMagnitude; }
        }
      }
      throw new ArgumentException("What did you even pass in here dude?");
    }
  }
}
