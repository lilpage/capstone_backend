class AddCategoryToIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :category, :string
  end
end
