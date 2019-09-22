class User < ApplicationRecord
  belongs_to :church
  has_many :locations, through: :church
end
