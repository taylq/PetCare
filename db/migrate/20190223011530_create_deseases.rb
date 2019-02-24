class CreateDeseases < ActiveRecord::Migration[5.2]
  def change
    create_table :deseases do |t|
      t.integer :pet_type
      t.string :name
      t.text :symptom
      t.text :reason
      t.text :treatment
      t.text :description

      t.timestamps
    end
  end
end
