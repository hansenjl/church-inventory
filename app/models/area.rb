class Area < ApplicationRecord
  #space in a location (i.e. closet, bookshelf, storage bin1)
  belongs_to :location
  has_many :items
  has_many :purposes, -> {distinct}, through: :items

  #


end
