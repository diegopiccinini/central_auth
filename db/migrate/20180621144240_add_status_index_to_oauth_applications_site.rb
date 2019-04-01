class AddStatusIndexToOauthApplicationsSite < ActiveRecord::Migration[4.2]
  def change
    add_index :oauth_applications_sites, :status

  end
end
