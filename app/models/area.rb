class Area < ApplicationRecord
  belongs_to :location
  has_many :items
  has_many :purposes, {distinct} through: :items

  validates :name, presence: true
end
