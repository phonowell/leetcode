# https://leetcode.com/problems/string-to-integer-atoi/

###
  Implement atoi to convert a string to an integer.
  实现atoi，将一个字符串转换为整数。

  Hint: Carefully consider all possible input cases. If you want a challenge, please do not see below and ask yourself what are the possible input cases.
  提示：仔细考虑所有可能的输入。如果你想要挑战自我，请不要阅读下面的内容，并自行思考什么是"可能的输入情况"。

  Notes: It is intended for this problem to be specified vaguely (ie, no given input specs). You are responsible to gather all the input requirements up front.
  注意：这个问题有意表述模糊（即没有指明输入格式）。你需要自行应对所有的输入情况。
###

$ = {}

$.i = (msg) ->
  console.log msg
  msg

toInt = (string) ->

  map = [
    '0', '1', '2', '3', '4'
    '5', '6', '7', '8', '9'
  ]

  if !string then return NaN
  if !string.length then return NaN

  list = []

  for a in string

    if !(a in map)
      if list.length then break
      continue

    list.push a

  new Number list.join ''

$.i toInt 'ab123'