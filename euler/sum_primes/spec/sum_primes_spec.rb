require_relative '../sum_primes'

describe '#return_primes' do
  it 'returns all prime numbers below given number' do
    expect(return_primes(10)).to eq [2, 3, 5, 7]
  end
end

describe '#sum_primes' do
  it 'returns the sum of primes below given number' do
    expect(sum_primes(10)).to eq(17)
  end
end
