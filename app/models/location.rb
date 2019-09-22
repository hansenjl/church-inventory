class Location < ApplicationRecord
  belongs_to :church
  has_many :users, through: :church
  has_many :areas
  has_many :items, through: :areas

  validates :name, presense: true
  validates :name, uniqueness: {scope: :church_id,  message: "already exists for this church"}
end
