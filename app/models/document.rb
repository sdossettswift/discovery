class Document < ApplicationRecord
  # attachment :document, destroy: false
  belongs_to :matter
  has_many :users

end
