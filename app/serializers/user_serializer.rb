class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :api_token, :address, :city, :state, :postal_code, :email, :password_digest, :confirmation_password
end
