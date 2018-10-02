class Api::V1::CompaniesController < ApplicationController
  before_action :find_company, only: [:update, :show]

  def index
    @companies = Company.all
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
    @company = Company.new(company_params)
    if @company.save
      render json: @company, status: :accepted
    else
      render json: {errors: @company.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def show
    render json: @company, status: :accepted
  end

  private

  def company_params
    params.require(:company).permit(:description, :name, :symbol, :price, :news, :high, :low, :open_price, :close_price)
  end

  def find_company
    @company = Company.find(params[:id])
  end

end
