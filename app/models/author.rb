class Author < ActiveRecord::Base
  validates_presence_of :name, :biography, :birth_country, :birth_year

  has_attached_file :image, styles: { small: "75x100", medium: "150x200", large: "300x400" }
  validates_attachment :image, content_type: { content_type:["image/jpg", "image/jpeg", "image/png"] }

  has_many :books
end
