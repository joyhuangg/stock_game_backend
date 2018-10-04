class Company < ApplicationRecord
  has_many :stock_cards
  has_many :users, through: :stock_cards
  has_many :news
  validates :name, presence:true, uniqueness:true
  validates :price, presence:true
  validates :symbol, uniqueness:true

  def self.update_or_create_by(description:, price:, name:, symbol:, high:, low:, open_price:, close_price:, news:)
    if Company.find_by(symbol:symbol)
      company = Company.find_by(symbol:symbol)
      company.update(price:price, high:high, low:low, open_price:open_price, close_price:close_price, updated_at: DateTime.now)
      company
    else
      company = Company.create(description:description, price:price, name:name, symbol:symbol, high:high, low:low, open_price:open_price, close_price:close_price)
      company
    end
  end
end
