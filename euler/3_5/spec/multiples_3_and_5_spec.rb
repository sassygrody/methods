require_relative '../multiples_3_and_5'

describe '#multiples_3_and_5' do
  it 'finds the sum of all multiples of 3 and 5 below 10' do
    arr = (1..10).to_a
    less_than_num = 10
    expect(multiples_3_and_5(arr, less_than_num)).to eq(23)
  end

  it 'finds the sum of all multiples of 3 and 5 below 1000' do
    arr = (1..1_000).to_a
    less_than_num = 1_000
    expect(multiples_3_and_5(arr, less_than_num)).to eq(233_168)
  end
end
