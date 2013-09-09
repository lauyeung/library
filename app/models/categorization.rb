class Categorization < ActiveRecord::Base
  belongs_to :book
  belongs_to :category

  validates :book_id , uniqueness: { scope: :category, message: "should only have each category once"}
end
