class DropClientComments2 < ActiveRecord::Migration[5.0]
  def change
    drop_table :client_comments
  end
end
