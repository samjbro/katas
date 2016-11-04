# for each word in word list, search dictionary for anagrams
# return word list updated with each word's anagrams alongside

require 'anagram'

describe 'anagram' do
  let(:dictionary) { File.read('spec/support/dictionary_sample.txt') }
  let(:expected_output) { File.read('spec/support/output.txt') }

  it 'returns the word list with all anagrams for sample dictionary' do
    expect(find_anagrams(dictionary)).to eq(expected_output)
  end
  it 'returns the word list with all anagrams for full dictionary' do
    full_dictionary = File.read('wordlist.txt')
    expect(find_anagrams(full_dictionary).lines.length).to eq(20683)
  end

end
