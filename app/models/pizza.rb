class Pizza < ApplicationRecord
    has_many :assigments
    has_many :menus, through: :assigments

    delegate :pizzahouse, to: :menu

    validates :name, :uniqueness =>  true

end
