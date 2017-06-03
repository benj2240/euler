using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using Euler;
using System.Linq;

namespace EulerTests
{
  [TestClass]
  public class EulerTests
  {
    [TestMethod]
    public void Euler001_Example()
    {
      Assert.AreEqual(23, Solutions.Euler001(10));
    }

    [TestMethod]
    public void Euler001_Actual()
    {
      Assert.AreEqual(233168, Solutions.Euler001(1000));
    }

    [TestMethod]
    public void Euler002_Example()
    {
      Assert.AreEqual(44, Solutions.Euler002(100));
    }

    [TestMethod]
    public void Euler002_Actual()
    {
      Assert.AreEqual(4613732, Solutions.Euler002(4000000));
    }

    [TestMethod]
    public void Euler003_Example()
    {
      Assert.AreEqual(29, Solutions.Euler003(13195));
    }

    [TestMethod]
    public void Euler003_Actual()
    {
      Assert.AreEqual(6857, Solutions.Euler003(600851475143));
    }

    [TestMethod]
    public void PalindromicList()
    {
      var EvenPalindrome = new List<int>() { 1, 2, 3, 3, 2, 1 };
      Assert.IsTrue(EvenPalindrome.Palindromic());
      var OddPalindrome = new List<int>() { 1, 2, 3, 2, 1 };
      Assert.IsTrue(OddPalindrome.Palindromic());
      var EvenList = new List<int>() { 1, 2, 3, 4, 2, 1 };
      Assert.IsFalse(EvenList.Palindromic());
      var OddList = new List<int>() { 1, 2, 3, 3, 1 };
      Assert.IsFalse(OddList.Palindromic());
    }

    [TestMethod]
    public void Euler004_Example()
    {
      Assert.AreEqual(9009, Solutions.Euler004(2));
    }

    [TestMethod]
    public void Euler004_Actual()
    {
      Assert.AreEqual(906609, Solutions.Euler004(3));
    }

    [TestMethod]
    public void Euler005_Example()
    {
      Assert.AreEqual(2520, Solutions.Euler005(10));
    }

    [TestMethod]
    public void Euler005_Actual()
    {
      Assert.AreEqual(232792560, Solutions.Euler005(20));
    }

    [TestMethod]
    public void Euler006_Example()
    {
      Assert.AreEqual(2640, Solutions.Euler006(10));
    }

    [TestMethod]
    public void Euler006_Actual()
    {
      Assert.AreEqual(25164150, Solutions.Euler006(100));
    }

    [TestMethod]
    public void Euler007_Example()
    {
      Assert.AreEqual(13, Solutions.Euler007(6));
    }

    [TestMethod]
    public void Euler007_Actual()
    {
      Assert.AreEqual(104743, Solutions.Euler007(10001));
    }

    [TestMethod]
    public void Euler008_Example()
    {
      Assert.AreEqual(5832, Solutions.Euler008(4));
    }

    [TestMethod]
    public void Euler008_Actual()
    {
      Assert.AreEqual(23514624000, Solutions.Euler008(13));
    }

    [TestMethod]
    public void Euler009_Small()
    {
      Assert.AreEqual(780, Solutions.Euler009(30));
    }

    [TestMethod]
    public void Euler009_Actual()
    {
      Assert.AreEqual(31875000, Solutions.Euler009(1000));
    }

    [TestMethod]
    public void Euler010_Small()
    {
      Assert.AreEqual(17, Solutions.Euler010(10));
    }

    [TestMethod]
    public void Euler010_Actual()
    {
      Assert.AreEqual(142913828922, Solutions.Euler010(2000000));
    }

    [TestMethod]
    public void Euler011_Small()
    {
      Assert.AreEqual(9603, Solutions.Euler011(2));
    }

    [TestMethod]
    public void Euler011_Actual()
    {
      Assert.AreEqual(70600674, Solutions.Euler011(4));
    }

    [TestMethod]
    public void Euler012_Small()
    {
      Assert.AreEqual(28, Solutions.Euler012(5));
    }

    [TestMethod]
    public void Euler012_Actual()
    {
      Assert.AreEqual(76576500, Solutions.Euler012(500));
    }

    [TestMethod]
    public void Euler013_Actual()
    {
      Assert.AreEqual(5537376230, Solutions.Euler013());
    }

    [TestMethod]
    public void Euler014_Example()
    {
      Assert.AreEqual(9, Solutions.Euler014(15));
    }

    [TestMethod]
    public void Euler014_Actual()
    {
      Assert.AreEqual(837799, Solutions.Euler014(1000000));
    }

    [TestMethod]
    public void Euler015_Example()
    {
      Assert.AreEqual(6, Solutions.Euler015(2));
    }

    [TestMethod]
    public void Euler015_Actual()
    {
      Assert.AreEqual(137846528820, Solutions.Euler015(20));
    }

    [TestMethod]
    public void Euler016_Example()
    {
      Assert.AreEqual(26, Solutions.Euler016(15));
    }

    [TestMethod]
    public void Euler016_Actual()
    {
      Assert.AreEqual(1366, Solutions.Euler016(1000));
    }

    [TestMethod]
    public void Euler017_Example()
    {
      Assert.AreEqual(19, Solutions.Euler017(5));
    }

    [TestMethod]
    public void Euler017_Actual()
    {
      Assert.AreEqual(21124, Solutions.Euler017(1000));
    }

    [TestMethod]
    public void Euler040_Actual()
    {
      Assert.AreEqual(210, Solutions.Euler040(6));
    }
  }
}
