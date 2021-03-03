class Borough < ApplicationRecord
  has_many :companies

  scope :income_max, -> (amount) { where("gross_income <= ?", amount) }
  scope :income_min, -> (amount) { where("gross_income >= ?", amount) }

  scope :employment_rate_min, -> (amount) { where("employment_rate >= ?", amount) }
  scope :employment_rate_max, -> (amount) { where("employment_rate <= ?", amount) }

end
