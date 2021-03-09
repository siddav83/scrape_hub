class BoroughsController < ApplicationController
  before_action :find, only: [:show, :edit, :update, :destroy]


  def index
    @boroughs = Borough.all
    @boroughs = @boroughs.income_max(params[:search][:income_max])
    @boroughs = @boroughs.income_min(params[:search][:income_min])
    @top_income = @boroughs.order(gross_income: :desc).first
  end

  def show
    @companies = @borough.companies
    @markers = { lat: @borough.latitude, lng: @borough.longitude }
  end

  def new
    @borough = Borough.new
  end

  def create
    @borough = Borough.create(strong_params)
    redirect_to borough_path(@borough)
  end

  def edit
  end

  def update
    @borough.update(strong_params)
    redirect_to borough_path(@borough)
  end

  def destroy
    @borough.destroy
    redirect_to root_path
  end

  private

  def find
    @borough = Borough.find(params[:id])
  end


  def strong_params
    params.require(:borough).permit(:name, :area, :gross_income, :population, :employment_rate, :average_age, :two_year_business_survival_rates, :happiness_score_out_of_10)
  end
end

