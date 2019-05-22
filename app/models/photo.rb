class Photo < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  #photo belongs to product
  belongs_to :photo

end
