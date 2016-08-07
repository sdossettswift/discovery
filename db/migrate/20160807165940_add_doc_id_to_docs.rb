class AddDocIdToDocs < ActiveRecord::Migration[5.0]
  def change
    add_column :docs, :doc_id, :string
  end
end
