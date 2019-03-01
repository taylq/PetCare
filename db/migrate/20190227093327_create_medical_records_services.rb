class CreateMedicalRecordsServices < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_records_services do |t|
      t.integer :service_id
      t.integer :medical_record_id
      t.integer :quantity

      t.timestamps
    end
  end
end
