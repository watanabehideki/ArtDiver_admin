ActiveAdmin.register Exhibition do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :content, :tel, :start_date, :end_date, :open_time, :holiday, :url, :admission, :gallery_id, :exhibition_image
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :content, :tel, :start_date, :end_date, :open_time, :holiday, :url, :admission, :gallery_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  show do
    attributes_table do
      row :title
      row :tel
      row :start_date
      row :end_date
      row :open_time
      row :holiday
      row :url
      row :admission
      row :content do |r|
        r.content.html_safe # html_safeでhtmlコンテンツを表示
      end

      row :exhibition_image do
        image_tag exhibition.exhibition_image.url
      end
    end
  end

  
end
