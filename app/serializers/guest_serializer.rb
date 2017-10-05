class GuestSerializer < ActiveModel::Serializer
  attributes :id :name :api_token :address :city :state :postal_code :email
end
