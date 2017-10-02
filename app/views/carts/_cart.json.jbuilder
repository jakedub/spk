json.extract! cart, :id, :purchase, :created_at, :updated_at
json.url cart_url(cart, format: :json)
