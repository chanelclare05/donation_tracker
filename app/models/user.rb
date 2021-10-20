class User < ApplicationRecord
  has_secure_password
  has_many :donations #stored as an array
  has_many :organizations, through: :donations

  #validates comes from ActiveRecord
  validates :name, :username, presence: true
  validates :username, uniqueness: true
  validates :password, length: {in: 6..20}
end


#what goes in here?
  ##query methods/scope methods
  ##validations
  ##helper methods
  ##doman logic
  ##associations