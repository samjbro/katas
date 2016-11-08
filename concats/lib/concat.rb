require 'set'

MAXIMUM_CONCATENATIONS = 3
TARGET_LENGTH = 7 #includes newline character

def concats(wordlist)
  wordset = wordlist.to_set
  six_letter_concats = []
  wordset.each do |word|
    next unless word.length == TARGET_LENGTH
    MAXIMUM_CONCATENATIONS.times { |i| six_letter_concats << concatenate(word, i, wordset) }
  end
  six_letter_concats.compact
end

def concatenate(word, letter_index, wordset)
  subwords = get_subwords(word, letter_index)
  (return nil) unless valid_word?(subwords[:first], wordset) && valid_word?(subwords[:second], wordset)
  format_string(subwords[:first], subwords[:second], word)
end

def valid_word?(word, wordset)
  wordset.include?(word + "\n")
end

def format_string(first, second, full_word)
  "#{first} + #{second} => #{full_word}"
end

def get_subwords(word, letter_index)
  {first: word[0..letter_index+1], second: word[letter_index+2..-2]}
end
