# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
Author.destroy_all


book_classifications = [ 
  'General Works', 
  'Philosophy, Psychology, Religion', 
  'History - Auxiliary Sciences', 
  'History (except American)', 
  'General U.S. History',
  'Local U.S. History',
  'Geography',
  'Anthropology', 
  'Recreation',
  'Social Sciences U',
  'Political Science V', 
  'Law Z - Bibliograpy and Library Science',
  'Education',
  'Music',
  'Fine Arts',
  'Language and Literature',
  'Science',
  'Medicine',
  'Agriculture',
  'Technology',
  'Military',
  'Naval Science',
  'Bibliography and Library Science'
]

book_types = [
  'Nonfiction','Fiction',
]

50.times do |book|
  Book.create!(title: Faker::Book.title,  
              genre: Faker::Book.genre, 
              classification: book_classifications.sample, 
              type: book_types.sample, 
              year: Faker::Number.between(1750, 2018))
end
  
  books = Book.all


25.times do |author|
  Author.create!(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  age: Faker::Number.between(20,99))
end

  authors_id = Author.ids

books.each do |book|
    author_id = authors_id.sample
    Authorship.create!(book_id: book.id,
                    author_id: author_id)
end







  


