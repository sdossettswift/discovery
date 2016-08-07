class AddMatterIdToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :matter_id, :string
  end
end
