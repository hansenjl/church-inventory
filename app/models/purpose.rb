class Purpose < ApplicationRecord
  belongs_to :church
  has_many :items

  validates :name, presence: true
end
