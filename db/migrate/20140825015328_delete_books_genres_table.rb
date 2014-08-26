class DeleteBooksGenresTable < ActiveRecord::Migration
  def change
    drop_table :books_genres
  end
end
