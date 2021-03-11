class BoroughsController < ApplicationController
  before_action :find, only: [:show, :edit, :update, :destroy]

  def index
    @boroughs = Borough.all
    @boroughs = @boroughs.income_max(params[:search][:income_max])
    @boroughs = @boroughs.income_min(params[:search][:income_min])
    @top_income = @boroughs.order(gross_income: :desc).first
    @companies = Company.where(category: params[:search][:category])
  end

  def show
    #@companies = @borough.companies
    @bookmark = Bookmark.where(user: current_user).find_by(borough: @borough)
    @companies = @borough.companies.where(category: params[:category].capitalize)
    @markers = { lat: @borough.latitude.to_s, lng: @borough.longitude.to_s }
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

  def bookmark
    @bookmark = Bookmark.new
    if params[:category].present?
      @bookmark.category = params[:category]
    else
      @bookmark.category = nil
    end

    @borough = Borough.find(params[:format])

    p @bookmark
    @bookmark.borough = @borough
    p @bookmark
    @bookmark.user = current_user
    p @bookmark
    if @bookmark.save
      redirect_to borough_path(@borough)
    end
  end

  private

  def find
    @borough = Borough.find(params[:id])
  end

  def strong_params
    params.require(:borough).permit(:name, :area, :gross_income, :population, :employment_rate, :average_age, :two_year_business_survival_rates, :happiness_score_out_of_10)
  end
end
