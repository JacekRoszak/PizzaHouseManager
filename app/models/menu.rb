class Menu < ApplicationRecord
    belongs_to :pizzahouse, optional: true
    has_many :assigments
    has_many :pizzas, through: :assigments
end
