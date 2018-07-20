class Book < ActiveRecord::Base
  attr_accessible :book_id, :book_name, :category, :no_of_books, :total_books,:authors
  has_and_belongs_to_many :customer
  belongs_to :customer
end
