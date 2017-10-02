class Guest < ApplicationRecord
  has_secure_token :api_token

  has_many :products
  belongs_to :cart
end
