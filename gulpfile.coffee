# require

$$ = require 'fire-keeper'
{$, _} = $$.library

# function

exclude = $$.fn.excludeInclude

# task

###

  build
  lint
  set
  test
  watch

###

$$.task 'build', ->

  source = exclude './source/**/*.coffee'

  await $$.compile source,
    bare: true
    minify: false

$$.task 'lint', ->

  await $$.task('kokoro')()

  await $$.lint [
    './gulpfile.coffee'
    './source/**/*.coffee'
    './test/**/*.coffee'
  ]

$$.task 'set', ->

  if !(ver = $$.argv.version) then return

  await $$.replace './package.json'
  , /"version": "[\d.]+"/, "\"version\": \"#{ver}\""

$$.task 'test', ->

  await $$.compile './test/**/*.coffee'
  await $$.shell 'npm test'
  await $$.remove './test/**/*.js'

$$.task 'watch', ->

  source = exclude './source/**/*.coffee'

  $$.watch source, (e) ->
    await $$.compile e.path,
      bare: true
      minify: false

# $$.task 'z', ->