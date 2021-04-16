class ChangeDirectionsToArray < ActiveRecord::Migration[6.1]
  def change
    change_column :recipes, :directions, :string, array: true, default: [], using: "(string_to_array(directions, ','))"
  end
end
