# require

$$ = require 'fire-keeper'
{$, _, Promise} = $$.library
co = Promise.coroutine

# function

exclude = (arg) ->

  list = switch $.type arg
    when 'array' then arg
    when 'string' then [arg]
    else throw new Error 'invalid argument type'

  _.uniq list.push '!**/include/**'

  # return
  list

# task

###

  build
  lint
  set
  test
  watch
  work

###

$$.task 'build', co ->

  source = exclude './source/**/*.coffee'

  yield $$.compile source,
    bare: true
    minify: false

$$.task 'lint', co ->

  yield $$.task('kokoro')()

  yield $$.lint [
    './gulpfile.coffee'
    './source/**/*.coffee'
    './test/**/*.coffee'
  ]

$$.task 'set', co ->

  if !(ver = $$.argv.version) then return

  yield $$.replace './package.json'
  , /"version": "[\d.]+"/, "\"version\": \"#{ver}\""

$$.task 'test', co ->

  yield $$.compile './test/**/*.coffee'
  yield $$.shell 'npm test'
  yield $$.remove './test/**/*.js'

$$.task 'watch', ->

  source = exclude './source/**/*.coffee'

  $$.watch source, co (e) ->
    yield $$.compile e.path,
      bare: true
      minify: false

$$.task 'work', -> $$.shell 'start gulp watch'

#$$.task 'z', co ->