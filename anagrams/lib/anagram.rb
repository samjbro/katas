def find_anagrams(dictionary)
  hash = {}
  hash.default = ""
  dictionary.unpack("C*").pack("U*").split("\n").each do |word|
    split_word = word.chars.sort
    hash[split_word] += " " unless hash[split_word] == ""
    hash[split_word] += word
  end
  output = hash.values.delete_if { |anagrams| anagrams.split(' ').length < 2 }
  output.sort.join("\n") + "\n"
end


# INEFFICIENT FIRST ATTEMPT BELOW

# def find_anagrams(word_list, dictionary)
#   # word_list.encode!('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
#   word_array = word_list.unpack("C*").pack("U*").split("\n")
#   word_array.map! do |word|
#     anagrams = []
#     permutations = word.chars.permutation.to_a.uniq.map(&:join)
#
#     permutations.each do |perm|
#       dictionary.unpack("C*").pack("U*").scan(perm) { |perm| anagrams << perm }
#     end
#     anagrams.sort.join(' ')
#   end
#   word_array.join("\n") + "\n"
# end
