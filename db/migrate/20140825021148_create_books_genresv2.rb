class CreateBooksGenresv2 < ActiveRecord::Migration
  def change
    create_table :books_genres , id: false do |t|
      t.belongs_to :book
      t.belongs_to :genre
    end
  end
end
