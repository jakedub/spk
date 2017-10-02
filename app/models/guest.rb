class Guest < ApplicationRecord
  has_secure_token :api_token
  validates :name, length: { minimum: 3 }, presence: true
  validates :address, length: { minimum: 3 }, presence: true
  validates :city, length: { minimum: 3 }, presence: true
  validates :state, length: { minimum: 2 }, presence: true
  validates :postal_code, length: { minimum: 5 }, presence: true
end
