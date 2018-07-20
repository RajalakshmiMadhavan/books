class CreateBooksCustomer < ActiveRecord::Migration
  def up
    create_table :books_customers do |t|
      t.integer :customer_id
      t.integer :book_id

      t.timestamps
    end
  end

  def down
  end
end
