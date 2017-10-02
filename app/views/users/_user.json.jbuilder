json.extract! user, :id, :name, :email, :confirmation_password, :api_token, :address, :city, :state, :postal_code, :created_at, :updated_at
json.url user_url(user, format: :json)
