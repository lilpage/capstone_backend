class ChangeDirectionsToString < ActiveRecord::Migration[6.1]
  def change
    change_column :recipes, :directions, :string
  end
end
