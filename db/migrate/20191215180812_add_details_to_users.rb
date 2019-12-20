class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :isAdmin, :boolean, default: 0
  end
end