class Image < ApplicationRecord::Base
    mount_uploader :photo, PictureUploader
    belongs_to :photo, class_name: "photo", foreign_key: "photo_id"
end