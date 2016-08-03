class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :description
      t.text :attorney_notes
      t.text :client_notes
      t.text :paralegal_notes
      t.integer :status
      t.date :date
      t.integer :year

      t.timestamps
    end
  end
end
