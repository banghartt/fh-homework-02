class Book < ApplicationRecord
  require 'faker'
  def self.search(search)
  where("title LIKE ? OR author LIKE ? OR classification LIKE ? OR type LIKE ? OR cast(year as text) LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end