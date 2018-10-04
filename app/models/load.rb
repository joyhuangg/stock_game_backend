require 'rest-client'
require 'json'
require 'pry'
class Load < ApplicationRecord


# fetches first 100 stocks
  def self.fetch_100_stocks
    response_string = RestClient.get('https://api.iextrading.com/1.0/ref-data/symbols')
    response_hash = JSON.parse(response_string)

    # (0..100).each do |i|
    (0..10).each do |i|
      stock = response_hash[i]
      symbol = response_hash[i]['symbol']
      update_stock(symbol)
      # fetchedStock = JSON.parse(RestClient.get"https://api.iextrading.com/1.0/stock/#{symbol}/batch?types=quote,news,chart")
      # update_stock(fetchedStock)
    end
  end


# makes a get request to a stock then updates or creates it in my backend
  def self.update_stock(symbol)
    stock = JSON.parse(RestClient.get"https://api.iextrading.com/1.0/stock/#{symbol}/batch?types=quote,news,chart")
    Company.update_or_create_by(description: stock['quote']['sector'], price: stock['quote']['latestPrice'], name: stock['quote']['companyName'], symbol: stock['quote']['symbol'], high: stock['quote']['high'], low: stock['quote']['low'], open_price: stock['quote']['open'], close_price: stock['quote']['close'], news: stock['news'][0])
  end
end
