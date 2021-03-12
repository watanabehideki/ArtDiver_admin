class AddExhibitionimageToExhibitions < ActiveRecord::Migration[6.0]
  def change
    add_column :exhibitions, :exhibition_image, :string
  end
end
