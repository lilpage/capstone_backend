class AddAmountToIngredientList < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredient_lists, :amount, :string
  end
end
