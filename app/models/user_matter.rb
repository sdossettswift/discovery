class UserMatter < ApplicationRecord
  # has_and_belongs_to_many :users
  # has_and_belongs_to_many :matters
  # has_and_belongs_to_many :roles

  belongs_to :matter
  belongs_to :user

  # Update the column on UserMatter to role_id versus role
  # belongs_to :role

end
