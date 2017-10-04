class Product < ApplicationRecord
  paginates_per 10
  attachment :image
  has_many :line_items

end
