class DropcompanyCategories < ActiveRecord::Migration[6.0]
  def change
    drop_table :company_categories
  end
end
