require_relative 'clock'

describe 'Clock' do
  it 'returns the angle of the time' do
    expect(clock_angle_of(3)).to eq(90)
  end
end
