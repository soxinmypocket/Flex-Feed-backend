class AddPictureToBoard < ApplicationRecord
  belongs_to :visionboards
  belongs_to :pictures
end
