class Category < ApplicationRecord
  has_many :companies, through:
  :company_category
end
