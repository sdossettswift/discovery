class User < ApplicationRecord
  has_secure_password
  has_many :matters, through: :user_matters
  has_many :user_matters
  ROLE = ['Attorney', 'Client', 'Admin', 'Paralegal']
  include Gravtastic
  gravtastic
end
