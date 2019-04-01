class AddSyncExcludedToOauthApplication < ActiveRecord::Migration[4.2]
  def change
    add_column :oauth_applications, :sync_excluded, :boolean, default: false
  end
end
