class AddColumnsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :isbn, :string
    add_column :books, :published_year, :integer
  end
end
