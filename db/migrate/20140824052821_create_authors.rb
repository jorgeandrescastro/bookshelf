class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.text :biography
      t.string :birth_country
      t.date :birth_year
      t.date :death_date
      t.timestamps
    end
  end
end
