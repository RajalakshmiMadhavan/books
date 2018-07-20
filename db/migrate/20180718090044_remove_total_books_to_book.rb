class RemoveTotalBooksToBook < ActiveRecord::Migration
  def up
    remove_column :books , :total_books
  end

  def down
  end
end
