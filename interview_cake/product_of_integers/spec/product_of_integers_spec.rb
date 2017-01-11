require_relative '../product_of_integers'

describe '#product_of_integers' do
  it 'returns an array of the products' do
    arr = [1, 7, 3, 4]
    expect(product_of_integers(arr)).to eq([84, 12, 28, 21])
  end

  it 'returns correctly with zeros' do
    arr = [1, 7, 3, 4, 0]
    expect(product_of_integers(arr)).to eq([0, 0, 0, 0, 84])
  end
end
