class AddRecipeIdToTag < ActiveRecord::Migration[6.1]
  def change
    add_column :tags, :recipe_id, :integer
  end
end
