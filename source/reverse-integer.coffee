# https://leetcode.com/problems/reverse-integer/description/

###

  Reverse digits of an integer.
  反转整数中的数字。

  Example1: x = 123, return 321
  Example2: x = -123, return -321

  Note:
  The input is assumed to be a 32-bit signed integer. Your function should return 0 when the reversed integer overflows.
  注意：
  输入值可假定为int32。当返回值超出int32范围时，函数应返回0。

###

#$ = {}
#$.i = (msg) ->
#  console.log msg
#  msg

reverse = (x) ->

  isMinus = x < 0

  string = Math.abs(x).toString()

  arr = string.split ''
  arr.reverse()

  res = parseInt arr.join ''
  if isMinus then res = -res

  unless -2147483648 < res < 2147483647
    res = 0

  res