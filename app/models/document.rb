class Document < ApplicationRecord
  attachment :document, destroy: false
  has_many :matter
  has_many :users
  has_many :client_comments
  has_many :attorney_comments
  has_many :law_office_comments
  belongs_to :events
end
