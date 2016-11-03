# for each word in word list, search dictionary for anagrams
# return word list updated with each word's anagrams alongside

require 'anagram'

describe 'anagram' do
  let(:word_list) { File.read('spec/support/wordlist_sample.txt') }
  let(:dictionary) { File.read('spec/support/dictionary_sample.txt') }
  let(:expected_output) { File.read('spec/support/output.txt') }

  it 'returns the word list with all anagrams' do
    expect(find_anagrams(word_list, dictionary)).to eq(expected_output)
  end

end
