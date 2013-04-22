class Rant < ActiveRecord::Base
  attr_accessible :message, :title, :image, :remote_image_url

  mount_uploader :image, ImageUploader
end
