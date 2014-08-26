ActiveAdmin.register Book do
  # permit_params :name, :description, :isbn, :published_year, :author_id
  controller do
    def permitted_params
      params.permit book: [:name, :description, :isbn, :published_year, :author, genre_ids: []]
    end
  end

  form do |f|
    f.inputs "Book Details" do
      f.input :name
      f.input :author
      f.input :description
      f.input :isbn
      f.input :published_year
      f.input :genres
    end
    f.actions
  end

  show do |book|
    attributes_table do
      row :name
      row :author
      row :description
      row "Genres" do |book|
        (book.genres.map{ |g| link_to g.name, admin_genre_path(g.id) }).join(', ').html_safe
      end
      row :isbn
      row :published_year
      row :created_at
      row :updated_at
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
