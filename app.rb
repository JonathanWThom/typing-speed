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
  input = params['input']
  @word = params['word']
  if @word == input
    @elapsed = (Time.now - start_time).round(2)
    @start_time = Time.now
    @word = Sentence.all.sample.sentence
    length = @word.split(' ').length
    @words_per_minute = ((60 / @elapsed) * length).round(2)
    erb(:index)
  else
    @input = input
    @word = @word
    @elapsed = (Time.now - start_time).round(2)
    @start_time = start_time
    @result = 'try again'
    erb(:index)
  end
end

get('/strings') do
  erb(:strings)
end

post('/strings') do
  Sentence.create(sentence: params['string'])
  redirect('/')
end
