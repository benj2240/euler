using System;
using System.Collections.Generic;
using System.Linq;

namespace Euler
{
  public static class IDictionaryExtensions
  {
    public static Dictionary<TKey, TValue> Merge<TKey, TValue>(
      this IDictionary<TKey, TValue> dict1,
      IDictionary<TKey, TValue> dict2,
      Func<TValue, TValue, TValue> resolver)
    {
      return dict1.AsEnumerable()
        .Concat(dict2.AsEnumerable())
        .GroupBy(
          kvp => kvp.Key,
          kvp => kvp.Value)
        .ToDictionary(
          ig => ig.Key,
          ig => ig.Aggregate(resolver));
    }

    public static Dictionary<TKey, TValue> MergeMax<TKey, TValue>(
      this IDictionary<TKey, TValue> dict1,
      IDictionary<TKey, TValue> dict2) where TValue: IComparable
    {
      Func<TValue, TValue, TValue> max = (v1, v2) => v1.CompareTo(v2) > 0 ? v1 : v2;
      return dict1.Merge(dict2, max);
    }
  }
}
