class Api::V1::NewsController < ApplicationController
  before_action :find_news, only: [:update, :show, :destroy]

  def index
    @news = News.all
    render json: @news
  end

  def update
    @news.update(news_params)
    if @news.save
      render json: @news, status: :accepted
    else
      render json: {errors: @news.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def create
    @news = News.new(news_params)
    if @news.save
      render json: @news, status: :accepted
    else
      render json: {errors: @news.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def show
    render json: @news, status: :accepted
  end

  def destroy
    @news.destroy
  end
  private

  def news_params
    params.permit(:headline, :url, :source, :summary, :image, :related, :datetime)
  end


  def find_news
    @news = News.find(params[:id])
  end

end
