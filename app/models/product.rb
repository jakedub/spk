class Product < ApplicationRecord
<<<<<<< HEAD
=======
  paginates_per 10

  has_many :categories
  belongs_to :user
  belongs_to :guest
  belongs_to :cart
end
