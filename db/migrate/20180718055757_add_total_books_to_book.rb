class AddTotalBooksToBook < ActiveRecord::Migration
  def change
    add_column :books, :total_books, :String
  end
end
