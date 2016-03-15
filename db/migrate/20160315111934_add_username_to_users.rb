class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_index :users, :username
    remove_column :users, :email
  end
end
