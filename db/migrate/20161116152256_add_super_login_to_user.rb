class AddSuperLoginToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :super_login, :boolean, default: false
  end
end
