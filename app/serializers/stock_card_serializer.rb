class StockCardSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :buy_price, :sell_price
  belongs_to :company
  belongs_to :user
end
