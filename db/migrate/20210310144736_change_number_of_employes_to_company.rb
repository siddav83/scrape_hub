class ChangeNumberOfEmployesToCompany < ActiveRecord::Migration[6.0]
  def change
    change_column :companies, :number_of_employees , :integer
  end
end
