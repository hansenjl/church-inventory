class Location < ApplicationRecord
  belongs_to :user
  has_many :areas
  has_many :items, through: :areas

  validates :name, presense: true
  validates :name, uniqueness: {scope: :church_id,  message: "already exists for this church"}
end
