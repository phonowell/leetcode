# https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/description/

###

  Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.
  给出一组按升序排列的整数，找出和为特定值的两个数字。

  The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.
  函数twoSum应返回和为指定值的两个数字的下标，且按升序排列。注意返回下标从1开始计算。

  You may assume that each input would have exactly one solution and you may not use the same element twice.
  可以假定所有输入值均有唯一解，且元素均不会被复用。

  Input: numbers={2, 7, 11, 15}, target=9
  Output: index1=1, index2=2

###

#$ = {}
#$.i = (msg) ->
#  console.log msg
#  msg
  
unique = (list) ->

  listUnique = [list[0]]
  last = list[0]

  for a in list[1...] when a != last
    listUnique.push last = a

  listUnique

twoSum = (list, target) ->

  listUnique = unique list

  for a, i in listUnique

    unless target - a in list[(1 + i)...]
      continue

    res = a
    break

  left = list.indexOf res
  right = 1 + left + list[(1 + left)...].indexOf target - res

  # return
  [
    1 + left
    1 + right
  ]

# execute
#$.i twoSum [-1, 0], -1 # [1, 2]
#$.i twoSum [0, 0, 3, 4], 0 # [1, 2]
