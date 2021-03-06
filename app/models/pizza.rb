class Pizza < ApplicationRecord
  has_many :assigments, dependent: :destroy # Pizze są przypisywane do menu za pośrednictwem tabeli łączącej Assigment
  has_many :menus, through: :assigments

  delegate :pizzahouses, to: :menu

  validates :name,    presence: true, uniqueness: true
  validates :recipe,  presence: true, uniqueness: true
  validates :price,   presence: true
end
