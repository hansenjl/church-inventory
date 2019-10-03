class Location < ApplicationRecord
  belongs_to :user
  has_many :areas
  has_many :items, through: :areas


end
