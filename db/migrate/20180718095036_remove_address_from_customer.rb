class RemoveAddressFromCustomer < ActiveRecord::Migration
  def up
    remove_column :customers, :Address
  end

  def down
    add_column :customers, :Address, :String
  end
end
