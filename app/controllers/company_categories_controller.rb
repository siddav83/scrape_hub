class CompanyCategoriesController < ApplicationController

  def create
    @company_category =CompanyCategory.create(strong_params)
    redirect_to company_path(@company)
  end




  def destroy
    @company_category.destroy
    redirect_to root_path
  end
end
