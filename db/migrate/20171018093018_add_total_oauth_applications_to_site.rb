class AddTotalOauthApplicationsToSite < ActiveRecord::Migration[4.2]
  def change
    add_column :sites, :total_oauth_applications, :integer, default: 0
  end
end
