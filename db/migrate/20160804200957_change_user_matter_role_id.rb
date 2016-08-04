class ChangeUserMatterRoleId < ActiveRecord::Migration[5.0]
  def change
    remove_column :user_matters, :role
    add_column :user_matters, :role_id, :integer
  end
end
