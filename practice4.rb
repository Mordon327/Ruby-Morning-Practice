require 'rspec'

def palindrome? word
	word = word.downcase
	reverseword = word.reverse
	if reverseword == word
		true
	else
		false
	end
end


describe 'Check if a word is a palindrome' do
  it 'returns true if the word is a palindrome, false if not' do
    expect(palindrome?('tacocat')).to be(true)
    expect(palindrome?('Tacocat')).to be(true)
    expect(palindrome?('baseball')).to be(false)
  end
end