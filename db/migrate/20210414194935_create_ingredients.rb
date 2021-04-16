class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :class
      t.boolean :in_stock

      t.timestamps
    end
  end
end