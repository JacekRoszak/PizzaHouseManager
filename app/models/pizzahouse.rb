class Pizzahouse < ApplicationRecord
    belongs_to :menu, optional: true
    has_many :assigments, through: :menu
    has_many :pizzas, through: :assigments, source: :pizza


    validates :name, uniqueness: true
end
