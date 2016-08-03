class Matter < ApplicationRecord
  has_many :users
  has_many :usermatters
  has_many :documents
  has_many :events
end
