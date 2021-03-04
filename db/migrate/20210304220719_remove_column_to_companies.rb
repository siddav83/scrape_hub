class RemoveColumnToCompanies < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :category, :integer
  end
end
