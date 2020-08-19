class PictureSerializer < ActiveModel::Serializer
  attributes :id, :category, :image, :title, :likes, :description
end
