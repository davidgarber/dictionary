require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')

get('/') do
  erb(:index)
end

get('/word/new') do
  erb(:word_form)
end

get('/words') do
  @word = Word.all()
  erb(:words)
end

post('/words') do
  word = params.fetch('word')
  Word.new(word).save()
  @word = Word.all()
  erb(:success)
end

get('/definitions/id') do
  @definition = Definition.find(params.fetch('id'))
  erb(:vehicle)
end

get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word)
end

get('/word/:id/definition/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word_form)
end

post('/definition') do
  meaning = params.fetch('meaning')
  speech = params.fetch('speech')
  source = params.fetch('source')
  @definition = Definition.new(meaning, speech, source)
  @definition.save()
  @word = Word.find(params.fetch('word_id').to_i())
  @word.add_definition(@definition)
  erb(:success)
end
