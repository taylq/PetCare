class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.integer :user_id
      t.string :name
      t.string :image
      t.integer :gender
      t.integer :type

      t.timestamps
    end
  end
end
