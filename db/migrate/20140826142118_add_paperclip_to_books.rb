class AddPaperclipToBooks < ActiveRecord::Migration
  def change
    add_attachment :books, :image
  end
end
