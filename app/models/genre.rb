class Genre < ActiveRecord::Base

  extend FriendlyId
   friendly_id :name, use: :slugged

  validates_presence_of :name, :description

  has_and_belongs_to_many :books
end
