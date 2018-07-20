class AddReviewToBook < ActiveRecord::Migration
  def change
    add_column :books, :review, :String
  end
end
