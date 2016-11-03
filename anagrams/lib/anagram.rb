def find_anagrams(word_list, dictionary)
  word_array = word_list.split("\n")
  word_array.map! do |word|
    anagrams = []
    permutations = word.chars.permutation.to_a.uniq.map(&:join)

    permutations.each do |perm|
      dictionary.scan(perm) { |perm| anagrams << perm }
    end
    anagrams.sort.join(' ')
  end
  word_array.join("\n") + "\n"
end
