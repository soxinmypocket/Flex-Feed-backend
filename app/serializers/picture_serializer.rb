class PictureSerializer < ActiveModel::Serializer
  attributes :id, :category, :image, :title, :likes, :description
  has_many :comments
end
