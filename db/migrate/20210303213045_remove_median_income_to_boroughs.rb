class RemoveMedianIncomeToBoroughs < ActiveRecord::Migration[6.0]
  def change
    remove_column :boroughs, :median_income, :integer
  end
end
