require_relative '../palindrome'

describe '#palindrome' do
  it 'reads the number both ways' do
    pali = 5005
    non_pali = 5000
    expect(palindrome?(pali)).to eq true
    expect(palindrome?(non_pali)).to eq false
  end
end

describe '#multiply_numbers' do
  it 'only returns palindromes' do
    expect(multiply_numbers(91, 99)).to eq 9009
    expect(multiply_numbers(91, 100)).to eq('not a palindrome')
  end
end

describe '#3_digit_multipliers' do
  it 'returns all palindromes of three digit multiplers' do
   expect(three_digit_multipliers(993, 913)).to eq 906_609
  end
end
