class Company < ApplicationRecord
  has_many :stock_cards
  has_many :users, through: :stock_cards
  validates :name, presence:true, uniqueness:true
  validates :price, presence:true
end
