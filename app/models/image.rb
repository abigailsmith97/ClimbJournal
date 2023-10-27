class Image < ApplicationRecord
    mount_uploader :image, ImageUploader
    attr_accessor :title, :image
  end
