# require 'spec_helper'
require_relative '../binary'
require_relative '../binary2'

describe '#binary_search' do
  it 'returns -1 if the search value is not in the array' do
    expect(binary_search(35, [13, 19, 24, 29, 32, 37, 43])).to eq(-1)
  end

  it 'returns the array\'s index that holds the search value' do
    arr = (100..200).to_a
    expect(binary_search(135, arr)).to eq(35)
  end
end

describe "#binary_search2" do
  it "returns 'not found' if the value is not the list" do
    expect(binary_search2([13, 19, 24, 29, 32, 37, 43], 35)).to eq("not found")
  end

  it 'returns the array\'s index that holds the search value' do
    arr = (100..202).to_a
    expect(binary_search2(arr, 135)).to eq("index: 35 value: 135")
  end
end

describe "#it_search" do
  it "returns 'not found' if the value is not the list" do
    expect(it_search([13, 19, 24, 29, 32, 37, 43], 35)).to eq("not found")
  end

  it 'returns the array\'s index that holds the search value' do
    arr = (100..202).to_a
    expect(it_search(arr, 135)).to eq("index: 35 value: 135")
  end
end
