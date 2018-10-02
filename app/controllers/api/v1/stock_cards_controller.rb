class Api::V1::StockCardsController < ApplicationController

  before_action :find_stock_card, only: [:update, :show]

  def index
    @stock_cards = StockCard.all
    render json: @stock_cards
  end

  def update
    @stock_card.update(stock_card_params)
    if @stock_card.save
      render json: @stock_card, status: :accepted
    else
      render json: {errors: @stock_card.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def create
    @stock_card = StockCard.new(stock_card_params)
    if @stock_card.save
      render json: @stock_card, status: :accepted
    else
      render json: {errors: @stock_card.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def show
    render json: @stock_card, status: :accepted
  end

  private

  def stock_card_params
    params.permit(:user_id, :company_id, :quantity, :buy_price, :sell_price)
  end

  def find_stock_card
    @stock_card = StockCard.find(params[:id])
  end

end
