class Document < ApplicationRecord
  # attachment :document, destroy: false
  has_many :users
  belongs_to :matter
end
