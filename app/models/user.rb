class User < ApplicationRecord
  has_many :stock_cards
  has_many :companies, through: :stock_cards
  validates :name, presence:true
  validates :username, presence:true, uniqueness:true
end
