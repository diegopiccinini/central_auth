class AddEnabledToEverybodyToOauthApplication < ActiveRecord::Migration[4.2]
  def change
    add_column :oauth_applications, :enabled_to_everybody, :boolean , default: false, index: true
  end
end
