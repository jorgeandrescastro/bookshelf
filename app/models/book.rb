class Book < ActiveRecord::Base
  validates_presence_of :name, :description, :isbn, :published_year, :author_id
  validates_uniqueness_of :name, :isbn

  belongs_to :author
  has_and_belongs_to_many :genres
  accepts_nested_attributes_for :genres

end
