class AddRoleToUserMatter < ActiveRecord::Migration[5.0]
  def change
      add_column :user_matters, :role, :string
  end
end
