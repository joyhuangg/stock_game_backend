class Api::V1::CompaniesController < ApplicationController
  before_action :find_company, only: [:update]

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
    @company = new Company(company_params)
    if @company.save
      render json: @company, status: :accepted
    else
      render json: {errors: @company.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def company_params
    params.permit(:description, :name, :price)
  end

  def find_company
    @company = Company.find(params[:id])
  end

end
