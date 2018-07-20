class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :book_id
      t.string :book_name
      t.integer :no_of_books
      t.string :category
      t.timestamps
    end
  end
end
