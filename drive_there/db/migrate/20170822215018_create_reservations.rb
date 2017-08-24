class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :customer_id
      t.integer :vehicle_id
      t.datetime :startdate
      t.datetime :end_date
      t.text :extra

      t.timestamps
    end
  end
end
