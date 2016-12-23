require('/Users/JonathanThom/documents/code/typing_speed/lib/sentence.rb')

#set words equal to api

words = ['the', 'the quick', 'the quick brown', 'the quick brown fox', 'the quick brown fox', 'the quick brown fox jumped', 'the quick brown fox jumped over', 'the quick brown fox jumped over the', 'the quick brown fox jumped over the lazy', 'the quick brown fox jumped over the lazy dog']
#roll this back eventually and populate from api?

words.each { |word| Sentence.create(sentence: "#{word}") }


# "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
