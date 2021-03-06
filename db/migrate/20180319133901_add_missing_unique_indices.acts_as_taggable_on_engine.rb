# This migration comes from acts_as_taggable_on_engine (originally 2)
class AddMissingUniqueIndices < ActiveRecord::Migration[4.2]
  def self.up
    add_index :tags, :name, unique: true
    change_column :taggings, :taggable_type, :string, limit: 128
    change_column :taggings, :tagger_type, :string, limit: 128

    add_index :taggings,
              [:tag_id, :taggable_id, :taggable_type, :context, :tagger_id, :tagger_type],
              unique: true, name: 'taggings_idx'
  end

  def self.down
    remove_index :tags, :name
    remove_index :taggings, name: 'taggings_idx'
  end
end
