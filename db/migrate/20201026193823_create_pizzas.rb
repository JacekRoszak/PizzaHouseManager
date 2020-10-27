class CreatePizzas < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.integer :price
      t.string :recipe

      t.timestamps
    end
  end
end
