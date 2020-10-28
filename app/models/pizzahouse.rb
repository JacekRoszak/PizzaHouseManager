class Pizzahouse < ApplicationRecord
  #napisać dlaczego
  belongs_to :menu, optional: true
  has_many :assigments, through: :menu
  has_many :pizzas, through: :assigments, source: :pizza

  validates :name, uniqueness: true, presence: true
end