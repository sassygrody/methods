require_relative '../apple_stocks'

describe 'array of stock prices' do
  expect(stock_prices_yesterday[60]).to eq 500
end
