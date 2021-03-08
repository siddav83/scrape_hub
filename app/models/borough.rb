class Borough < ApplicationRecord
  has_many :companies

  scope :income_max, -> (amount) { where("gross_income <= ?", amount) }
  scope :income_min, -> (amount) { where("gross_income >= ?", amount) }


  scope :borough_id, -> (amount) { where("borough_id >= ?", amount) }

end
