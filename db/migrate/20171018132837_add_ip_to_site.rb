class AddIpToSite < ActiveRecord::Migration[4.2]
  def change
    add_column :sites, :ip, :string
  end
end
