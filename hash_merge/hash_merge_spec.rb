require_relative 'hash_merge'

describe '#hash_merge' do
  it 'returns the combined hashes' do
    expect(hash_merge([{ a: 'aye', c: 'cat' }, { d: 'dee' }])).to eq({ a: 'aye', c: 'cat', d: 'dee'} )
    expect(hash_merge([{ a: 'aye', c: 'gets overwritten' }, { c: 'cee', d: 'dee' }])).to eq(a: 'aye', c: 'cee', d: 'dee')
  end

  it 'retruns duplicate values within an array' do
    expect(hash_merge_with_duplicates([{ a: 'aye', c: 'cat' }, { d: 'dee' }])).to eq({ a: 'aye', c: 'cat', d: 'dee'} )
    expect(hash_merge_with_duplicates([{ a: 'aye', b: 'bumble' }, { b: 'bee', d: 'dee' }])).to eq(a: 'aye', b: ['bumble', 'bee'], d: 'dee')
  end

  it 'accepts multiple hashes' do
    expect(hash_merge([{ a: 'aye' }, { c: 'cee' }, { d: 'dee' }, { e: 'eee' }])).to eq({ a: 'aye', c: 'cee', d: 'dee', e: 'eee'} )
    expect(hash_merge_with_duplicates([{ a: 'aye', c: 'cat' }, { d: 'dee' }])).to eq({ a: 'aye', c: 'cat', d: 'dee'} )
  end
end
