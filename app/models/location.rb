class Location < ApplicationRecord
  #room location (i.e. room1, trailer, storage shed)
  belongs_to :user #validates for presence
  has_many :areas
  has_many :items, through: :areas

  #TODO: Write a validation that requires the name to start with 'room' and give a custom message


end
