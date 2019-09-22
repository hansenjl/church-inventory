class Item < ApplicationRecord
  belongs_to :area
  belongs_to :purpose

  vvalidates :name, presence: true
end
