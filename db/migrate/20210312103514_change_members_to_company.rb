class ChangeMembersToCompany < ActiveRecord::Migration[6.0]
  def change
    change_column :companies, :members , :integer
  end
end
