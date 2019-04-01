class CreateSites < ActiveRecord::Migration[4.2]
  def change
    create_table :sites do |t|
      t.string :url
      t.integer :status
      t.string :step

      t.timestamps null: false
    end
    add_index :sites, :url , unique: true
  end
end
