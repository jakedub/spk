class User < ApplicationRecord
  has_secure_token :api_token
  has_secure_password
  validates :name, length: { minimum: 3 }, presence: true
  validates :email, length: { minimum: 3 }, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password_digest, length: { minimum: 8 }
  validates :address, length: { minimum: 3 }, presence: true
  validates :city, length: { minimum: 3 }, presence: true
  validates :state, length: { minimum: 2 }, presence: true
  validates :postal_code, length: { minimum: 5 }, presence: true

  has_many :products
  belongs_to :cart
end
