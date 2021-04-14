class RemoveClassFromIngredient < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :class
  end
end
