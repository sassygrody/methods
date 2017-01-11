require_relative '../pig_latin'

describe 'PigLatin' do
  it 'should return a word as piglatin' do
    expect(piglatinify('hello')).to eq('ellohay')
  end

  it 'should return the piglatinified string' do
    string = 'Hello my life sucks thanks'
    expect(piglatinify(string)).to eq('ellohay my ifelay uckssay anksthay')
  end
end
