using System;
using Euler;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace EulerTests
{
  [TestClass]
  public class NumberTranslationTests
  {
    [TestMethod]
    public void Test_SmallNumberNames()
    {
      Assert.AreEqual("zero", 0.ToEnglish());
      Assert.AreEqual("one", 1.ToEnglish());
      Assert.AreEqual("two", 2.ToEnglish());
      Assert.AreEqual("three", 3.ToEnglish());
      Assert.AreEqual("four", 4.ToEnglish());
      Assert.AreEqual("five", 5.ToEnglish());
      Assert.AreEqual("six", 6.ToEnglish());
      Assert.AreEqual("seven", 7.ToEnglish());
      Assert.AreEqual("eight", 8.ToEnglish());
      Assert.AreEqual("nine", 9.ToEnglish());
      Assert.AreEqual("ten", 10.ToEnglish());
      Assert.AreEqual("eleven", 11.ToEnglish());
      Assert.AreEqual("twelve", 12.ToEnglish());
      Assert.AreEqual("thirteen", 13.ToEnglish());
      Assert.AreEqual("fourteen", 14.ToEnglish());
      Assert.AreEqual("fifteen", 15.ToEnglish());
      Assert.AreEqual("sixteen", 16.ToEnglish());
      Assert.AreEqual("seventeen", 17.ToEnglish());
      Assert.AreEqual("eighteen", 18.ToEnglish());
      Assert.AreEqual("nineteen", 19.ToEnglish());
    }

    [TestMethod]
    public void Test_TwoDigitNumbers()
    {
      Assert.AreEqual("twenty", 20.ToEnglish());
      Assert.AreEqual("twenty-two", 22.ToEnglish());
      Assert.AreEqual("thirty-three", 33.ToEnglish());
      Assert.AreEqual("forty-four", 44.ToEnglish());
      Assert.AreEqual("fifty-five", 55.ToEnglish());
      Assert.AreEqual("sixty-six", 66.ToEnglish());
      Assert.AreEqual("seventy-seven", 77.ToEnglish());
      Assert.AreEqual("eighty-eight", 88.ToEnglish());
      Assert.AreEqual("ninety-nine", 99.ToEnglish());
    }

    [TestMethod]
    public void Test_ThreeDigitNumbers()
    {
      Assert.AreEqual("one hundred", 100.ToEnglish());
      Assert.AreEqual("two hundred and three", 203.ToEnglish());
      Assert.AreEqual("four hundred and fifty-six", 456.ToEnglish());
    }

    [TestMethod]
    public void Test_VeryLargeNumbers()
    {
      Assert.AreEqual("one thousand", 1000.ToEnglish());
      Assert.AreEqual("ten thousand", 10000.ToEnglish());
      Assert.AreEqual("one hundred thousand", 100000.ToEnglish());
      Assert.AreEqual("one million", 1000000.ToEnglish());
      Assert.AreEqual("two thousand, three hundred", 2300.ToEnglish());
      Assert.AreEqual("four thousand, five hundred and sixty-seven", 4567.ToEnglish());
      Assert.AreEqual("nine million, one", 9000001.ToEnglish());
      Assert.AreEqual("eight million, six hundred and seventy-five thousand, three hundred and nine", 8675309.ToEnglish());
    }
  }
}
