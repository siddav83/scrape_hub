class AddColumnToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :turnover, :integer
  end
end
