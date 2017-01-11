require_relative '../find_duplicates'

describe '#find_duplicates' do
  it 'returns the duplicate number (once)' do
    arr = [1, 1, 2, 2, 3, 4, 4, 5, 6, 6, 7]
    expect(find_duplicates(arr)).to eq [1, 2, 4, 6]
  end
end
