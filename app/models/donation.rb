class Donation < ApplicationRecord
  belongs_to :organization
  belongs_to :user 

  # validates :amount, optional: true
end
