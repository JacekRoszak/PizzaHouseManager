class Pizzahouse < ApplicationRecord
  # Restauracja może mieć tylko jedno menu, zato to samo menu może obowiązywać w wielu restauracjach.
  belongs_to :menu, optional: true
  # Menu może mieć wiele przypisanych pizz za pośrednictwem tabeli łączącej assigment
  has_many :assigments, through: :menu
  has_many :pizzas, through: :assigments, source: :pizza

  # Restauracja musi mieć unikatową nazwę
  validates :name, uniqueness: true, presence: true
end