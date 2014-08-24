class Book < ActiveRecord::Base
  validates_presence_of :name, :description, :isbn, :published_year
  validates_uniqueness_of :name

  belongs_to :author
end
