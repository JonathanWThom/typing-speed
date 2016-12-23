require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @word = Sentence.all.sample.sentence
  erb(:index)
end

post('/') do
  guess = params['guess']
  @word = params['word']
  if @word == guess
    redirect('/')
  else
    @word = @word
    @result = 'try again'
    erb(:index)
    #this route is ugly, but it works
  end
end
