class RemovePizzahouseIdFromMenus < ActiveRecord::Migration[6.0]
  def change
    remove_column :menus, :pizzahouse_id
  end
end
