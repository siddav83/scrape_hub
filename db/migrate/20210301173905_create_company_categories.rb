class CreateCompanyCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :company_categories do |t|
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
