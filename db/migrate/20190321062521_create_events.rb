class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :doctor_id, foreign_key: true
      t.integer :nurse_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
