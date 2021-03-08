class AddNewColumnToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :date_of_incoporation, :integer
    add_column :companies, :ceo, :string
    add_column :companies, :number_of_employees, :float
    add_column :companies, :profit, :float
    add_column :companies, :members, :float
  end
end
