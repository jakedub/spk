class User < ApplicationRecord
  has_secure_token :api_token
  has_secure_password

  has_many :products
  belongs_to :cart
end
