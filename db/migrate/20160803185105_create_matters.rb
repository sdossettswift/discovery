class CreateMatters < ActiveRecord::Migration[5.0]
  def change
    create_table :matters do |t|
      t.string :kind
      t.text :description
      t.integer :year
      t.string :cause_number
      t.string :court
      t.string :judge
      t.string :opposing_party
      t.string :opposing_counsel
      t.string :status

      t.timestamps
    end
  end
end
