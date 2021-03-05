class AddCategoryToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :category, :string
  end
end
