class Book < ApplicationRecord
  require 'faker'
  def self.search(search)
  where("title LIKE ? OR author LIKE ? OR classification LIKE ? OR type LIKE ? OR year LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end