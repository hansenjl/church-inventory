class User < ApplicationRecord
  has_many :locations

  validates :email, presence: true, uniqueness: true
end
