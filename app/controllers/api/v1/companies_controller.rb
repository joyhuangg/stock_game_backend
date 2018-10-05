class Api::V1::CompaniesController < ApplicationController
  before_action :find_company, only: [:update, :show, :destroy]

  def index
    @companies = Company.all
    # @companies.each {|company| Load.update_stock(company.symbol)}
    render json: @companies
  end

  def refresh_companies
    @companies = Company.all
    @companies.each {|company| Load.update_stock2(company.symbol)}
    # byebug
    render json: @companies
  end

  def update
    @company.update(company_params)
    if @company.save
      render json: @company, status: :accepted
    else
      render json: {errors: @company.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def create
    @company = Company.update_or_create_by(:description => company_params[:description],:name => company_params[:name],:symbol => company_params[:symbol],:price => company_params[:price],:news =>company_params[:news],:high => company_params[:high],:low => company_params[:low],:open_price => company_params[:open_price],:close_price => company_params[:close_price])
    # date = Date.rfc3339(params['company']['news']['datetime'])
    # news = params['company']['news'].except('datetime')
    # news['datetime'] = date
    # byebug
    if @company
      render json: @company, status: :accepted
    else
      render json: {errors: @company.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def show
    render json: @company, status: :accepted
  end

  def destroy
    @company.destroy
  end
  private

  def company_params
    params.require(:company).permit(:description, :name, :symbol, :price, :news, :high, :low, :open_price, :close_price)
  end


  def find_company
    @company = Company.find(params[:id])
  end

end
