class AddEmploymentRateToBorough < ActiveRecord::Migration[6.0]
  def change
    add_column :boroughs, :employment_rate, :float
    add_column :boroughs, :gross_income, :integer
  end
end
