class ChangeDocumentIDtoInteger2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :matter_id, :string
    add_column :documents, :matter_id, :integer
  end
end
