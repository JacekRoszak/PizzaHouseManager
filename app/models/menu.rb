class Menu < ApplicationRecord
  has_many :pizzahouses                     # Jedno menu może należeń do wielu restauracji.  
  has_many :assigments, dependent: :destroy # Menu może mieć wiele przypisanych pizz
  has_many :pizzas, through: :assigments    
end
