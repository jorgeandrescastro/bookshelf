class CreateBooksBookcases < ActiveRecord::Migration
  def change
    create_table :books_bookcases, :id => false do |t|
      t.integer :bookcase_id
      t.integer :book_id
    end
    add_index :books_bookcases, [:bookcase_id, :book_id]
  end
end