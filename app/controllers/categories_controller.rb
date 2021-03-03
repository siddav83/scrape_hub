class CategoriesController < ApplicationController
  before_action :find, only:[:show, :edit, :update, :destroy]


  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(strong_params)
    redirect_to category_path(@category)
  end

  def edit
  end

  def update
    @category.update(strong_params)
    redirect_to category_path(@category)
  end

  def destroy
    @category.destroy
    redirect_to root_path
  end


  private

  def find
    @category = Category.find(params[:id])
  end

  def strong_params
    params.require(:category.permit(:name))
  end


end
