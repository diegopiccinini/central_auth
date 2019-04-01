class AddMultitenantToOauthApplication < ActiveRecord::Migration[4.2]
  def change
    add_column :oauth_applications, :multitenant, :boolean, default: false
  end
end
