class AddMyBooksToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :my_books, :String
  end
end
