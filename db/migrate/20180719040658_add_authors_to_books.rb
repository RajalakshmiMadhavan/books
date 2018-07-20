class AddAuthorsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :authors, :String
  end
end
