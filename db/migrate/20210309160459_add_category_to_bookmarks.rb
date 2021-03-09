class AddCategoryToBookmarks < ActiveRecord::Migration[6.0]
  def change
    add_column :bookmarks, :category, :string, default: nil
  end
end
