class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :money
  has_many :companies
  has_many :stock_cards
end
