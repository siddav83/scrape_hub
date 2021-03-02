class Company < ApplicationRecord
  belongs_to :borough
  has_many :company_categories
  has_many :categories, through: :company_categories
end
