class ProductSerializer < ActiveModel::Serializer
  attributes :id, :patch, :product_name, :sku, :price, :year, :availabilty, :quantity, :size, :description, :category

def patch
  Refile.attachment_url(object, :patch, format: "png")
end
end
