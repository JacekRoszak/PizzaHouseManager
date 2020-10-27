class Assigment < ApplicationRecord
    belongs_to :menu, optional: true
    belongs_to :pizza, optional: true

    delegate :pizzahouse, to: :menu

end
