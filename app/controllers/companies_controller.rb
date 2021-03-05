class CompaniesController < ApplicationController
   before_action :find, only:[:show, :edit, :update, :destroy]


  def index
    @companies = Company.all
    @companies = @companies.turnover_min(1000)
    # @companies = @companies.turnover_max(5000)

  end

  def show
  end

  def new
    @company =Company.new
  end

  def create
    @company =Company.create(strong_params)
    redirect_to company_path(@company)
  end

  def edit
  end

  def update
    @company.update(strong_params)
    redirect_to company_path(@company)
  end

  def destroy
    @company.destroy
    redirect_to root_path
  end


  private

  def find
    @company = Company.find(params[:id])
  end

  def strong_params
    params.require(:company.permit(:name, :address, :turnover, :category))
  end
end
