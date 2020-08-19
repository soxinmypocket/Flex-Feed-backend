class VisionboardSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id
  has_many :pictures
end
