class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.date :dob
      t.integer :gender
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :email
      t.references :matter, foreign_key: true
      t.text :description
      t.boolean :involved_in_suit
      t.boolean :family
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :nickname
      t.string :relationship

      t.timestamps
    end
  end
end
