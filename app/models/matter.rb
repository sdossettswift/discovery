class Matter < ApplicationRecord

  has_many :users, through: :user_matters
  has_many :user_matters

  has_many :documents
  has_many :events
  has_many :attorney_comments, through: :documents
  has_many :client_comments, through: :documents
  has_many :matter_events

  validates :year, presence: true

end
