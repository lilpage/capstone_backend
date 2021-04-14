class CreateIngredientLists < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredient_lists do |t|
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
