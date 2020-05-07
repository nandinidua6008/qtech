class AddRpasswordToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :rpassword, :string
  end
end
