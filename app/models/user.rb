class User < ApplicationRecord
  has_secure_password
  has_many :donations #stored as an array
  has_many :organizations, through: :donations
end


#what goes in here?
  ##query methods/scope methods
  ##validations
  ##helper methods
  ##doman logic
  ##associations