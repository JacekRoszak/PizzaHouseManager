class Assigment < ApplicationRecord
  belongs_to :menu
  belongs_to :pizza

  delegate :pizzahouses, to: :menu
end
