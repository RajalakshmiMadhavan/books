class RemoveMyBooksFromCustomer < ActiveRecord::Migration
  def up
    remove_column :customers, :my_books
  end

  def down
    add_column :customers, :my_books, :String
  end
end
