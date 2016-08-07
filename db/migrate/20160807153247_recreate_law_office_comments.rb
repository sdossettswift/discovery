class RecreateLawOfficeComments < ActiveRecord::Migration[5.0]
  def change
    create_table :law_office_comments do |t|
      t.text :comment
      t.integer :status
      t.references :doc, foreign_key: true

      t.timestamps
    end
  end
end
