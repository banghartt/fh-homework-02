class Author < ApplicationRecord
  has_many :books, dependent: :destroy
end

  def full_name
    Author.first_name 
    Author.last_name
  end

end
