require_relative '../flatten'

describe '#my_flatten' do
  arr1 = [[1, 2, 3], [4, 5, 6]]
  arr2 = [1, 2, ['string']]

  it 'should return a single array' do
    expect(my_flatten(arr1)).to eq([1, 2, 3, 4, 5, 6])
    expect(my_flatten(arr2)).to eq([1, 2, 'string'])
  end
end
