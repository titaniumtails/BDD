class ThingItem < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
