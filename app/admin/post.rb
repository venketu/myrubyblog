ActiveAdmin.register Post do

  menu :label => "Blog Posts"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :title, :body, :category_id, :admin_user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

index do
  column :title
  column "Author", :admin_user
  column :category
  column :created_at
  actions 
end

end
