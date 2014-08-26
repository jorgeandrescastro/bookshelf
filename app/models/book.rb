class Book < ActiveRecord::Base
  validates_presence_of :name, :description, :isbn, :published_year, :author_id, :image
  validates_uniqueness_of :name, :isbn

  has_attached_file :image, styles: { small: "80x118", medium: "159x237", large: "318x475" }
  validates_attachment :image, content_type: { content_type:["image/jpg", "image/jpeg", "image/png"] }

  belongs_to :author
  has_and_belongs_to_many :genres
  accepts_nested_attributes_for :genres

end
