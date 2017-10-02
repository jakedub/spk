json.extract! guest, :id, :name, :api_token, :address, :city, :state, :postal_code, :email, :created_at, :updated_at
json.url guest_url(guest, format: :json)
