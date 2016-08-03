class Firm < ApplicationRecord
  has_many :users
  has_many :matters
end
