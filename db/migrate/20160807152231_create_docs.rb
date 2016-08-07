class CreateDocs < ActiveRecord::Migration[5.0]
  def change
    create_table :docs do |t|
      t.string :title
      t.string :description
      t.integer :status
      t.date :date
      t.integer :year
      t.references :matter, foreign_key: true

      t.timestamps
    end
  end
end
