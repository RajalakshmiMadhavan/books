class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :serial_no
      t.string :customer_name
      t.string :book_name
      t.datetime :issue_date
      t.datetime :due_date

      t.timestamps
    end
  end
end
