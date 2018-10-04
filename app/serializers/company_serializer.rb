class CompanySerializer < ActiveModel::Serializer
  attributes :id, :news, :description, :name, :price, :symbol, :high, :low, :open_price, :close_price, :updated_at
  has_many :stock_cards
  has_many :users, through: :stock_cards
  has_many :news
end
