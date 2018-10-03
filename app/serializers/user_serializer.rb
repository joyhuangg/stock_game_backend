class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :money, :cards
  has_many :companies, through: :stock_cards
  has_many :stock_cards


# this function allows me to access companies through cards
  def cards
    # all_cards = {}
    object.stock_cards.map do |stock|
      {id: stock.id, user_id: stock.user_id, company: stock.company, buy_price: stock.buy_price, sell_price: stock.sell_price}
    end
  end

end
