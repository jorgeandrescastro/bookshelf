class Bookcase < ActiveRecord::Base

  validates_presence_of :name
  belongs_to :user

  has_and_belongs_to_many :books
  accepts_nested_attributes_for :books
end
