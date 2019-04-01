class AddExpireAtToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :expire_at, :datetime
    User.all.each { |u| u.save(validation: false) }
  end
end
