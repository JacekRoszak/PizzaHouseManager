class CreatePizzahouses < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzahouses do |t|
      t.string :name
      t.string :adress
      t.string :workinghoures, :default => "11:00 - 23:00"
      t.integer :menu_id

      t.timestamps
    end
  end
end
