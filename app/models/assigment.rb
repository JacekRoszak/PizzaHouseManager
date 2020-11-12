class Assigment < ApplicationRecord
  # Tabela łącząca pizze z menu. Służy do przypisywania.
  belongs_to :menu
  belongs_to :pizza

  delegate :pizzahouses, to: :menu
end

# robisz dalej modele,pizzahouse i pizza skończyłeś