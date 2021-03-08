class AddColumnDescriptionToBorough < ActiveRecord::Migration[6.0]
  def change
    add_column :boroughs, :description , :text
  end
end
