class Customer < ActiveRecord::Base
  attr_accessible :book_name, :customer_name, :due_date, :issue_date, :serial_no,:my_books
  has_and_belongs_to_many :books
  belongs_to :user
end
