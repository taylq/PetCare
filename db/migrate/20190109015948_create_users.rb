class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :role, default: 0
      t.string :address
      t.string :phone
      t.date :dob

      t.timestamps
    end
  end
end
