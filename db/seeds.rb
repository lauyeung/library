# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

list_of_books = [
  { title: "The Remaining", author: "D.J. Molles", rating: "10"},
  { title: "Learn to Program", author: "Chris Pine", rating: "9"},
  { title: "The Well-Grounded Rubyist", author: "David Black", rating: "8"},
]

list_of_books.each do |attributes|
  book = Book.where({
    title: attributes[:title],
    author: attributes[:author],
    rating: attributes[:rating]
    }).first

  if book.nil?
    book = Book.new(attributes)
  else
    book.attributes = attributes
  end

  book.save!

end


list_of_categories = [
  {category_name: "Fiction: Zombie"},
  {category_name: "Non-Fiction: Ruby"},
]

list_of_categories.each do |attributes|
  category = Category.where({
    category_name: attributes[:category_name]
    }).first

  if category.nil?
    category = Category.new(attributes)
  else
    category.attributes = attributes
  end

  category.save!
end
