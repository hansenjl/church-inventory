class User < ApplicationRecord
  belongs_to :church
  has_many :locations, through: :church

  validates :email, presence: true, uniqueness: true
end
