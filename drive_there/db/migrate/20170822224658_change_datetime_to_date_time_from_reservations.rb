class ChangeDatetimeToDateTimeFromReservations < ActiveRecord::Migration[5.0]
  def change
    rename_column :reservations, :startdate, :start_date
  end
end
