class Matter < ApplicationRecord
  has_many :user_matters
  has_many :users, through: :user_matters
  has_many :roles, through: :user_matters # how useful is this?

  has_many :documents
  has_many :events

  validates :year, presence: true
end
