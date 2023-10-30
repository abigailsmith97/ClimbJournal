class Image < ApplicationRecord
    belongs_to :outdoor_climbing
    mount_uploader :image, ImageUploader
    # attr_accessor :title, :image
  end
