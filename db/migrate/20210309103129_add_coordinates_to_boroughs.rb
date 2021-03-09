class AddCoordinatesToBoroughs < ActiveRecord::Migration[6.0]
  def change
    add_column :boroughs, :latitude, :float
    add_column :boroughs, :longitude, :float
  end
end
