class Author < ApplicationRecord
  has_many :authorships
  has_many :books, through: :authorships 
  
  attr_accessor :first_name, :last_name, :age
  
  def initialize(first_name, last_name, age)
    @first_name = first_name 
    @last_name = last_name
    @age = age
  end
  

  def full_name
    
     "#{self.first_name} #{self.last_name}"

  end

end
