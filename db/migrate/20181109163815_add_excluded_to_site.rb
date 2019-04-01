class AddExcludedToSite < ActiveRecord::Migration[4.2]
  def change
    add_column :sites, :excluded, :boolean, default: false, index: true
  end
end
