class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :caption
      t.string :credit
      t.string :day
      t.string :headline
      t.string :hour
      t.string :minute
      t.string :month
      t.string :text
      t.string :thumbnail
      t.string :url
      t.string :year

      t.timestamps
    end
  end
end
