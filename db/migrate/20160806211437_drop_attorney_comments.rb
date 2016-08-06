class DropAttorneyComments < ActiveRecord::Migration[5.0]
  def change
    drop_table :attorney_comments

  end
end
