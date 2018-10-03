class StockCardSerializer < ActiveModel::Serializer
  attributes :id,:buy_price, :sell_price
  belongs_to :company
  belongs_to :user
end
