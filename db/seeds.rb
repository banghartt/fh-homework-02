# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all

book_classification = [ 
  'General Works', 
  'Philosophy, Psychology, Religion', 
  'History - Auxiliary Sciences', 
  'History (except American)', 
  'General U.S. History',
  'Local U.S. History',
  'Geography',
  'Anthropology', 
  'Recreation',
  'Social Sciences',
  'Political Science', 
  'Law' 
]

book_types = [
  'Nonfiction','Fiction','Young Adult', 'Religion, Myth, and Ritural','Best Sellers'
]

50.times do |book|
  Book.create!(title: Faker::Book.title, 
              author: Faker::Book.author, 
              genre: Faker::Book.genre, 
              classification: book_classification.sample, 
              type: book_types.sample, 
              year: Faker::Number.between(1750, 2018))
end