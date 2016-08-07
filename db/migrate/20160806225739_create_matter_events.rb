class CreateMatterEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :matter_events do |t|
      t.references :matter, foreign_key: true
      t.string :caption
      t.string :credit
      t.string :headline
      t.string :text
      t.string :url
      t.string :thumbnail
      t.string :year
      t.string :month
      t.string :day
      t.string :hour
      t.string :minute
      t.references :document, foreign_key: true

      t.timestamps
    end
  end
end
