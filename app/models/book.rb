class Book < ActiveRecord::Base

  extend FriendlyId
   friendly_id :name, use: :slugged

  validates_presence_of :name, :description, :isbn, :published_year, :author_id, :language_id
  validates_uniqueness_of :name, :isbn

  has_attached_file :image, styles: { small: "80x118", medium: "159x237", large: "318x475" }
  validates_attachment :image, content_type: { content_type:["image/jpg", "image/jpeg", "image/png"] }

  belongs_to :author
  belongs_to :language
  has_and_belongs_to_many :genres
  accepts_nested_attributes_for :genres

  NUMBER_OF_LATEST_BOOKS = 4

  class << self

    def latest amount=1
      order('created_at desc').limit(amount)
    end


  end

  def genre_names
    self.genres.map(&:name).join(', ')
  end

end
