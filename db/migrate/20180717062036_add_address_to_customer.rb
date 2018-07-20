class AddAddressToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :Address, :String
  end
end
