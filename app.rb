require("bundler/setup")
Bundler.require(:default)
require('pry')
require('time')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @start_time = Time.now
  @word = Sentence.all.sample.sentence
  erb(:index)
end

post('/') do
  start_time = Time.parse(params['start_time'])
  guess = params['guess']
  @word = params['word']
  if @word == guess
    @elapsed = Time.now - start_time
    redirect('/')
  else
    @word = @word
    @result = 'try again'
    erb(:index)
    #this route is ugly, but it works
  end
end
