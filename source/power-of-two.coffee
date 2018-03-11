# https://leetcode.com/problems/power-of-two/

###

  Given an integer, write a function to determine if it is a power of two.
  给出一个整数，判断它是否是2的幂。

###

$ = {}

$.i = (msg) ->
  console.log msg
  msg

isPowerOfTwo = (n) -> n > 0 && !(n & n - 1)

$.i isPowerOfTwo 0
$.i isPowerOfTwo 1
$.i isPowerOfTwo 6
$.i isPowerOfTwo 12