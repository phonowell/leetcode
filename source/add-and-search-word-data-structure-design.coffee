# https://leetcode.com/problems/add-and-search-word-data-structure-design/

###

  Design a data structure that supports the following two operations:

  void addWord(word)
  bool search(word)
  search(word) can search a literal word or a regular expression string containing only letters a-z or .. A . means it can represent any one letter.

  For example:

  addWord 'bad'
  addWord 'dad'
  addWord 'mad'
  search("pad' -> false
  search("bad' -> true
  search(".ad' -> true
  search("b..' -> true
  Note:
  You may assume that all words are consist of lowercase letters a-z.

###

#$ = {}
#
#$.i = (msg) ->
#  console.log msg
#  msg

WordDictionary = -> null

WordDictionary::addWord = (word) ->
  @list or= []
  @cache = {}
  @list.push word

WordDictionary::search = (word) ->
  @list or= []
  @cache or= {}

  @cache[word] ?= do =>

    if !('.' in word) then return !!~@list.indexOf word

    for a in @list
      len = a.length

      if word.length != len then continue

      _len = 0
      _len++ for b, i in word when b == '.' or b == a[i]

      if _len != len then continue

      return true

    false

#dic = new WordDictionary()
#
#dic.addWord 'test'
#$.i dic.search 'test'
#$.i dic.search 'text'
#$.i dic.search 't..t'
#
#dic.addWord 'at'
#dic.addWord 'and'
#dic.addWord 'an'
#dic.addWord 'add'
#$.i dic.search 'a'
#$.i dic.search '.at'
#dic.addWord 'bat'
#$.i dic.search '.at'
#$.i dic.search 'an.'
#$.i dic.search 'a.d.'
#$.i dic.search 'b.'
#$.i dic.search 'a.d'
#$.i dic.search '.'