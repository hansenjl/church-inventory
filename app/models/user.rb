class User < ApplicationRecord
  has_secure_password
  has_many :locations

  #validate for unique emails
  # make all emails lowercase before validating and saving to db


end
