class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :email,null: false, unique: true
      t.string :password,null: false

      t.timestamps
    end
  end
end
