class RemoveInStockFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :in_stock, :string
  end
end
