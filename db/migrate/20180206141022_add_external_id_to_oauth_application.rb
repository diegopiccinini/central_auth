class AddExternalIdToOauthApplication < ActiveRecord::Migration[4.2]
  def change
    add_column :oauth_applications, :external_id, :string, limit: 255
  end
end
