class AddAddressToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Address, :String
  end
end
