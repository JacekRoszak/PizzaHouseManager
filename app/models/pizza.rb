class Pizza < ApplicationRecord
  has_many :assigments, dependent: :destroy
  has_many :menus, through: :assigments

  delegate :pizzahouses, to: :menu
end
