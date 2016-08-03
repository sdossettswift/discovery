class User < ApplicationRecord
  has_many :matters
  belongs_to :firm
  has_many :usermatters
end
