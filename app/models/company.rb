class Company < ApplicationRecord
  has_many :stock_cards
  has_many :users, through: :stock_cards
  has_many :news
  validates :name, presence:true, uniqueness:true
  validates :price, presence:true
  validates :symbol, uniqueness:true
end
