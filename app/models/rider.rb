class Rider < ApplicationRecord
    mount_uploader :image , ImageUploader
    has_many :assignments
end
