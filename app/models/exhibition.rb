class Exhibition < ApplicationRecord
  belongs_to :gallery
  validates :gallery_id, presence: true

  mount_uploader :exhibition_image, ExhibitionImageUploader

end
