class User < ApplicationRecord
  has_secure_password  #validates :password, presence: true
  has_many :locations

  validates :first_name, :email, presence: true
  validates :email, uniqueness: {case_sensitive: false }

  #validate for unique emails
  # make all emails lowercase before validating and saving to db


end
