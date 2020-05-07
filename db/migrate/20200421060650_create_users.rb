class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.date :DOB,null: false
      t.string :gender, null: false
      t.integer :phone_number
      t.string :password, null: false

      t.timestamps
    end
  end
end
