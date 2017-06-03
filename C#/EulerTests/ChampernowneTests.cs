using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Linq;
using Euler;

namespace EulerTests
{
  [TestClass]
  public class ChampernowneTests
  {
    private static string _champernowne;

    [ClassInitialize]
    public static void Champernowne_String(TestContext tc)
    {
      _champernowne = string.Join("",
        Enumerable.Range(0, 200000)
          .Select(n => n.ToString()));
    }

    private int champernowne(int place)
    {
      return int.Parse(_champernowne[place].ToString());
    }

    [TestMethod]
    public void Champernowne_SingleDigits()
    {
      for (int i = 1; i < 10; i += 1)
        Assert.AreEqual(champernowne(i), Champernowne.Digit(i), $"incorrect at {i}");
    }

    [TestMethod]
    public void Champernowne_TwoDigits()
    {
      for (int i = 10; i < 190; i += 1)
        Assert.AreEqual(champernowne(i), Champernowne.Digit(i), $"incorrect at {i}");
    }

    [TestMethod]
    public void Champernowne_ThreeDigits()
    {
      for (int i = 190; i < 2890; i += 1)
        Assert.AreEqual(champernowne(i), Champernowne.Digit(i), $"incorrect at {i}");
    }

    [TestMethod]
    public void Champernowne_FourDigits()
    {
      for (int i = 2890; i < 38890; i += 1)
        Assert.AreEqual(champernowne(i), Champernowne.Digit(i), $"incorrect at {i}");
    }

    [TestMethod]
    public void Champernowne_FiveDigits()
    {
      for (int i = 38890; i < 488890; i += 1)
        Assert.AreEqual(champernowne(i), Champernowne.Digit(i), $"incorrect at {i}");
    }
  }
}
