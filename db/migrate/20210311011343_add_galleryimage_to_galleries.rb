class AddGalleryimageToGalleries < ActiveRecord::Migration[6.0]
  def change
    add_column :galleries, :gallery_image, :string
  end
end
