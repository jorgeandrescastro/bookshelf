class RenameBooksBookcasesToBookcasesBooks < ActiveRecord::Migration
  def change
    rename_table :books_bookcases, :bookcases_books
  end
end
