class AddEnabledToOauthApplications < ActiveRecord::Migration[4.2]
  def change
    add_column :oauth_applications, :enabled, :boolean, default: false
  end
end
