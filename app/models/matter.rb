class Matter < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :user_matters
  has_and_belongs_to_many :roles
  has_many :documents
  has_many :events
end
