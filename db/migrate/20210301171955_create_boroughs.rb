class CreateBoroughs < ActiveRecord::Migration[6.0]
  def change
    create_table :boroughs do |t|
      t.string :name
      t.integer :population
      t.integer :area
      t.integer :median_income

      t.timestamps
    end
  end
end
