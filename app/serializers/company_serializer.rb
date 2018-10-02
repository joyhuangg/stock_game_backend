class CompanySerializer < ActiveModel::Serializer
  attributes :id, :description, :name, :price, :symbol, :high, :low, :open_price, :close_price
  has_many :stock_cards
  has_many :users
  has_many :news
end
