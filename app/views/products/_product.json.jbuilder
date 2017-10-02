json.extract! product, :id, :product_name, :sku, :price, :year, :availabilty, :quantity, :size, :created_at, :updated_at
json.url product_url(product, format: :json)
