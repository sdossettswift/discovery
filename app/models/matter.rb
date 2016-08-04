class Matter < ApplicationRecord

  has_many :users, through: :user_matters
  has_many :user_matters

  has_many :documents
  has_many :events

  validates :year, presence: true
end
