class Company < ApplicationRecord
  belongs_to :borough

  scope :turnover_min, -> (amount) { where("turnover >= ?", amount) }
  scope :turnover_max, -> (amount) { where("turnover <= ?", amount) }
  scope :category_search, -> (option) { where("category >= ?", option) }
end
