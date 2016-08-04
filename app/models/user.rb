class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :matters
  has_and_belongs_to_many :user_matters
  # has_and_belongs_to_many :role
  ROLE = ['Attorney', 'Client', 'Admin', 'Paralegal']

end
