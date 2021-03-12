ActiveAdmin.register Gallery do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :email, :content, :location, :tel, :open_time, :holiday, :url, :gallery_image
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :content, :location, :tel, :open_time, :holiday, :url]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :location
    column :tel
    column :open_time
    column :holiday
    column :url
    column :created_at
    actions
  end

  filter :name
  filter :email
  filter :location
  filter :tel
  filter :open_time
  filter :holiday
  filter :url
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :location
      f.input :tel
      f.input :open_time
      f.input :holiday
      f.input :url
      f.input :content # ここでckeditorを呼び出す
      f.input :gallery_image # active storageを使って画像UPする際はas: :file
      f.actions
    end
  end

  show do
    attributes_table do
      row :name
      row :email
      row :location
      row :tel
      row :open_time
      row :holiday
      row :url
      row :content do |r|
        r.content.html_safe # html_safeでhtmlコンテンツを表示
      end
      row :gallery_image do
        image_tag gallery.gallery_image.url

      end
    end
  end

  controller do  
  end
end
