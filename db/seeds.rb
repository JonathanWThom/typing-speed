require('/Users/JonathanThom/documents/code/typing_speed/lib/sentence.rb')

words = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k']
#roll this back eventually and populate from api?

words.each { |word| Sentence.create(sentence: "#{word}") }
