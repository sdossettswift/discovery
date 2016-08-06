class CreateAttorneyComments < ActiveRecord::Migration[5.0]
  def change
    create_table :attorney_comments do |t|
      t.text :comment
      t.integer :status
      t.references :document, foreign_key: true

      t.timestamps
    end
  end
end
