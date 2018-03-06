class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  def self.search(search)
    where("title ILIKE ? OR 
      author ILIKE ? OR 
      classification ILIKE ? OR 
      type ILIKE ? OR 
      cast(year as text) ILIKE ?", 
      "%#{search}%", 
      "%#{search}%", 
      "%#{search}%", 
      "%#{search}%", 
      "%#{search}%")
  end
end
