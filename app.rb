require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')

get('/') do
  erb(:index)
end

post("/results") do
  word = params.fetch("word")
  new_word = Word.new(definition)
  new_word.save()
  erb(:results)
end
