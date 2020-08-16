class Picture < ApplicationRecord
    has_many :visionboards
    has_many :users, through: :visionboards
end
