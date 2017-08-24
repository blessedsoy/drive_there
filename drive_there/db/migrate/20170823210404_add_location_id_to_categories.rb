class AddLocationIdToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :location_id, :integer
  end
end
