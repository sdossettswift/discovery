class UserMatter < ApplicationRecord


  belongs_to :matter
  belongs_to :user

  # Update the column on UserMatter to role_id versus role
  # belongs_to :role


end
