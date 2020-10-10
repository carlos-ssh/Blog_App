class Image < ApplicationRecord::Base
    mount_uploader :picture, PictureUploader
end