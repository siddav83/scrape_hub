class Category < ApplicationRecord
  has_many :company_categories
  has_many :companies, through: :company_categories
end
