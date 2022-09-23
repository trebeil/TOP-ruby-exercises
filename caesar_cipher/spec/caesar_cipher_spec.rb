require './lib/caesar_cipher.rb'

describe 'caesar_cipher' do
  it 'shifts letters to the right' do
    expect(caesar_cipher('abcde', 5)).to eql('fghij')
  end

  it 'shifts letters to the left' do
    expect(caesar_cipher('fghij', -5)).to eql('abcde')
  end

  it 'goes to the start of the alphabet when shifting after z' do
    expect(caesar_cipher('stuvw', 5)).to eql('xyzab')
  end

  it 'goes to the end of the alphabet when shifting before a' do
    expect(caesar_cipher('xyzab', -5)).to eql('stuvw')
  end

  it 'keeps the same case' do
    expect(caesar_cipher('AbCxYz', 5)).to eql('FgHcDe')
  end

  it 'doesn\'t change characters that are not letters' do
    expect(caesar_cipher('AbC!?,.@&*()[]^', 8)).to eql('IjK!?,.@&*()[]^')
  end
end