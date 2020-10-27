class Menu < ApplicationRecord
    has_many :pizzahouse
    has_many :assigments
    has_many :pizzas, through: :assigments
end
