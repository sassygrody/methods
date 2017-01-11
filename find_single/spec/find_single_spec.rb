require_relative '../find_single'

describe '#find_single_in_array' do
  it 'should return the non-duplicated number' do
    arr = [1, 1, 2, 2, 3, 4, 4, 5, 6, 6, 7]
    expect(find_single_in_array(arr)).to eq [3, 5, 7]
  end
end

describe '#find_by_counting' do
  it 'should return the non-duplicated number' do
    arr = [1, 1, 2, 2, 3, 4, 4, 5, 6, 6, 7]
    expect(find_by_counting(arr)).to eq [3, 5, 7]
  end
end

describe '#find_by_partition' do
  it 'should return the non-duplicated number' do
    arr = [1, 1, 2, 2, 3, 4, 4, 5, 6, 6, 7]
    expect(find_by_partition(arr)).to eq [3, 5, 7]
  end
end
