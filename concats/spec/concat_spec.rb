require 'concat'

RSpec.describe '#concats' do
  let(:wordlist) { IO.readlines('spec/support/sample_wordlist.txt') }
  let(:expected_output) { IO.readlines('spec/support/expected_output.txt') }

  it "returns all 6-letter words that are concatenations of two valid words" do
    expect(concats(wordlist)).to eq(expected_output)
  end
  it "returns all 6-letter words that are concatenations of two valid words from full dictionary" do
    expect(concats(IO.readlines('wordlist.txt')).size).to eq 18470
    # p concats(IO.readlines('wordlist.txt'))
  end
end
