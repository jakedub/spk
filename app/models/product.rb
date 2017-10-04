class Product < ApplicationRecord
  paginates_per 10
  attachment :image
  has_many :line_items

<<<<<<< HEAD
=======
  has_many :line_items
>>>>>>> 1782f01d223685be05e1f8e0bb30c8fc7a82d82a
end
