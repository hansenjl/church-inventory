class Church < ApplicationRecord
  has_many :users
  has_many :locations
  has_many :purposes
  has_many :areas, through: :locations
  has_many :items, through: :areas
end
