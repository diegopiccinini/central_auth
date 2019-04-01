class CreateGoogleTokens < ActiveRecord::Migration[4.2]
  def change
    create_table :google_tokens do |t|
      t.string :token, limit: 1500

      t.timestamps null: false
    end
    add_index :google_tokens, :created_at
  end
end
