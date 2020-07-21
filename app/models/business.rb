class Business < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/

  has_many :events
end
