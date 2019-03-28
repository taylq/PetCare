class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :event
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
