class User < ApplicationRecord
  has_secure_token :api_token
  has_secure_password
  validates :name, email, length: { minimum: 3 }, presence: true
  # validates :email, length: { minimum: 3 }, presence: true
  validates :password, length: { minimum: 10 }
end
