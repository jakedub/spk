<<<<<<< HEAD
# class LineItemSerializer < ActiveModel::Serializer
#   attributes :id :quantity :product_id
#
#   has_one :cart
#   has_many :products
# end
=======
class LineItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :product_id

  has_one :cart
  has_many :products
end
>>>>>>> 486ef059f0d8a2a806f30018763bd78e0474b847


# class LineItemSerializer < ActiveModel::Serializer
#   attributes :id, :cart_id, :created_at, :item_id, :quantity
#
#
#
# has_one :cart
# has_one :item
# end
