class CreateFridges < ActiveRecord::Migration[6.1]
  def change
    create_table :fridges do |t|
      t.integer :ingredient_id
      t.integer :user_id
      t.boolean :in_stock, default: true

      t.timestamps
    end
  end
end
