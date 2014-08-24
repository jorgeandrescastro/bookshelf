class Author < ActiveRecord::Base
  validates_presence_of :name, :biography, :birth_country, :birth_year

  has_many :books
end
