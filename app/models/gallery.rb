class Gallery < ApplicationRecord
  has_many :exhibitions, dependent: :destroy

  mount_uploader :gallery_image, GalleryImageUploader

  
  # def display_image
  #   image.variant(resize_to_limit: [800, 500])
  # end


end