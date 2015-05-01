require('sinatra')
require('sinatra/reloader')
require('./lib/word_def')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  @all_defs = Word.all()
  erb(:index)
end

get('/entire_list') do
  @all_defs = Word.all()
  erb(:entire_list)
end

get("/entire_list/new") do
  erb(:add_def_form)
end

get('/entire_list/:id') do
  @word = Word.find(params.fetch("id"))
  erb(:word)
end


post('/entire_list') do
  word = params.fetch("word")
  definition = params.fetch("definition")
  new_word = Word.new({:word => word, :definition => definition})
  new_word.save()
  erb(:success)
end

get("/entire_list/:id") do
  @word = Word.find(params.fetch("id"))
  erb(:entire_list)
end
