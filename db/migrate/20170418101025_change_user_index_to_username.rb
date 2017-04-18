class ChangeUserIndexToUsername < ActiveRecord::Migration[5.0]
  def change
    add_index :users, :username, unique: true, name: "index_users_on_username"
  end
end
