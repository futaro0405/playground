class AddAdminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_clumn :users, :admin, :boolean, default: false, null: false
  end
end
