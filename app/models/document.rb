class Document < ApplicationRecord
  attachment :document, destroy: false
  has_many :matter
  has_many :users

end
