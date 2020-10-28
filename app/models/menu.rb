class Menu < ApplicationRecord
  has_many :pizzahouses
  has_many :assigments, dependent: :destroy
  has_many :pizzas, through: :assigments
end
