class AddMatterIdToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :matter_id, :integer
  end
end
