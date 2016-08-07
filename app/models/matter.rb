class Matter < ApplicationRecord

  has_many :users, through: :user_matters
  has_many :user_matters

  has_many :docs
  has_many :events
  has_many :attorney_comments, through: :docs
  has_many :client_comments, through: :docs
  has_many :law_office_comments, through: :docs

  validates :year, presence: true

end
