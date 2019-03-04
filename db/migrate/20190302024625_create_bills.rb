class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.integer :medical_record_id
      t.decimal :total

      t.timestamps
    end
  end
end
