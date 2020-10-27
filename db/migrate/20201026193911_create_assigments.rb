class CreateAssigments < ActiveRecord::Migration[6.0]
  def change
    create_table :assigments do |t|
      t.integer :pizza_id
      t.integer :menu_id

      t.timestamps
    end
  end
end
