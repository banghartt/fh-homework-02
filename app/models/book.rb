class Book < ApplicationRecord
  has_many :authorships 
  has_many :authors, through: :authorships

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
