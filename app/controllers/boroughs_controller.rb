class BoroughsController < ApplicationController
  before_action :find, only: [:show, :edit, :update, :destroy]


  def index
    @boroughs = Borough.all
    @boroughs = @boroughs.income_max(40000)
    @boroughs = @boroughs.income_min(30000)
    @boroughs = @boroughs.employment_rate_min(76.00)
    @boroughs = @boroughs.employment_rate_max(80.00)
  end

  def show
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
    params.require(:borough.permit(:name, :area, :median_income, :population))
  end
end

