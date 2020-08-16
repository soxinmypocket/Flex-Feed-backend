class User < ApplicationRecord
    has_many :visionboards
    has_many :pictures, through: :visionboards
end
