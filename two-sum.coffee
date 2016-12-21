# https://leetcode.com/problems/two-sum/

###
  Given an array of integers, return indices of the two numbers such that they add up to a specific target.
  给出一个整数数组，返回两个索引，使数组中对应元素的和为一特殊值。

  You may assume that each input would have exactly one solution.
  你可以假定每个输入都有唯一正确解。

  Example:
  举例：

  Given nums = [2, 7, 11, 15], target = 9,
  给出 nums = [2, 7, 11, 15], target = 9,

  Because nums[0] + nums[1] = 2 + 7 = 9,
  因为 nums[0] + nums[1] = 2 + 7 = 9,

  return [0, 1].
  故返回 [0, 1]。
###

$ = {}

$.i = (msg) ->
  console.log msg
  msg

twoSum = (list, target) ->

  for a, i in list

    arr = list.slice i + 1

    _i = arr.indexOf target - a

    if _i == -1 then continue

    return [i, _i + i + 1]

  [-1, -1]

$.i twoSum [2, 7, 11, 15], 9 # [0, 1]
$.i twoSum [3, 2, 4], 6 # [1, 2]
$.i twoSum [0, 4, 3, 0], 0 # [0, 3]
$.i twoSum [-1,-2,-3,-4,-5], -8 # [2, 4]