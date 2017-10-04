class Product < ApplicationRecord
  paginates_per 10
  attachment :patch
  has_many :line_items

end
