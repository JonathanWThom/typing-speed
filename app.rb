require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @word = Sentence.all.sample.sentence
  erb(:index)
end

get('/guess') do
  guess = params['guess']
  @word = params['word']
  if @word == guess
    redirect('/')
  else
    @result = 'try again!'
    @word = @word
  end
end
