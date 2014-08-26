ActiveAdmin.register Author do
  permit_params :name, :biography, :birth_country, :birth_year, :death_date, :image

  index do
    column :id
    column "Picture" do |author|
      link_to(image_tag(author.image.url(:small)), admin_author_path(author))
    end
    column :name
    column :birth_country
    actions
  end

  form do |f|
    f.inputs "Author Details" do
      f.input :name
      f.input :biography
      f.input :birth_country
      f.input :birth_year
      f.input :death_date
      f.input :image, :required => false, :as => :file
    end
    f.actions
  end

  show do |author|
    attributes_table do
      row :image do
        image_tag(author.image.url(:small))
      end
      row :name
      row :biography
      row :birth_country
      row :birth_year
      row :death_date
      row :created_date
      row :updated_date
    end
    
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end
