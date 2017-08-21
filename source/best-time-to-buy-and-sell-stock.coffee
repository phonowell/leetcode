# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

###

  Say you have an array for which the ith element is the price of a given stock on day i.
  假设你有一个数组，第i个元素表示给定股票在第i天的价格。

  If you were only permitted to complete at most one transaction (ie, buy one and sell one share of the stock), design an algorithm to find the maximum profit.
  如果你只能进行一次交易（即一次买入和一次卖出），设计一个算法求出最大利润。

  Example 1:
  例一：

  Input: [7, 1, 5, 3, 6, 4]
  Output: 5

  max. difference = 6-1 = 5 (not 7-1 = 6, as selling price needs to be larger than buying price)
  max.difference = 6 - 1 = 5 （并非 7 - 1 = 6，因为卖出价格必须大于买入价格）

  Example 2:
  例二：

  Input: [7, 6, 4, 3, 1]
  Output: 0

  In this case, no transaction is done, i.e. max profit = 0.
  在这个案例中，不能完成任何交易，即最大利润为零。

###

$ = {}

$.i = (msg) ->
  console.log msg
  msg

maxProfit = (prices) ->

  min = prices[0]
  res = 0

  for a in prices

    if a < min
      min = a
      continue

    if (dis = a - min) < res
      continue

    res = dis

  res

$.i maxProfit [7, 1, 5, 3, 6, 4]
$.i maxProfit [7, 6, 4, 3, 1]

list = [1e5..0]
list[1] = 99995

$.i maxProfit list
