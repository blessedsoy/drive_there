class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.integer :category_id
      t.string :make_model

      t.timestamps
    end
  end
end
