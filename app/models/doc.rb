class Doc < ApplicationRecord
  belongs_to :matter
  attachment :doc, destroy: false, extension: "pdf"
  has_many :users
  has_many :client_comments
  has_many :attorney_comments
  has_many :law_office_comments
end
