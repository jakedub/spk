class ProductSerializer < ActiveModel::Serializer
  attributes :id :patch

def patch
  Refile.attachment_url(object, :patch, format: "png")
end
