ActiveAdmin.register Exhibition do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :content, :tel, :start_date, :end_date, :open_time, :holiday, :url, :admission, :gallery_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :content, :tel, :start_date, :end_date, :open_time, :holiday, :url, :admission, :gallery_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
