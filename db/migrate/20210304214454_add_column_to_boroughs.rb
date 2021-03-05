class AddColumnToBoroughs < ActiveRecord::Migration[6.0]
  def change
    add_column :boroughs, :average_age , :integer
    add_column :boroughs, :two_year_business_survival_rates , :integer
    add_column :boroughs, :happiness_score_out_of_10 , :integer
  end
end
