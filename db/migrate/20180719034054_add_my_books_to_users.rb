class AddMyBooksToUsers < ActiveRecord::Migration
  def change
    add_column :users, :my_books, :String
  end
end
