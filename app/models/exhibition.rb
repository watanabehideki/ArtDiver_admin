class Exhibition < ApplicationRecord
  belongs_to :gallery
  validates :gallery_id, presence: true
end
