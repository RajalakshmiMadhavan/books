class AddCustomerIdToBook < ActiveRecord::Migration
  def change
    add_column :books, :customer_id, :integer
  end
end
