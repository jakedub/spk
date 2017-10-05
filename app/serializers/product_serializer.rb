class ProductSerializer < ActiveModel::Serializer
  attributes :id :image

def image
  Refile.attachment_url(object, :image, format: "png")
end

end
