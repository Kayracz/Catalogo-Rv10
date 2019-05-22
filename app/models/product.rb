class Product < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :photos

end
