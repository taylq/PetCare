class CreateMedicalRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_records do |t|
      t.integer :pet_id
      t.integer :doctor_id
      t.text :result
      t.integer :status, default: 0
      t.text :description

      t.timestamps
    end
  end
end
