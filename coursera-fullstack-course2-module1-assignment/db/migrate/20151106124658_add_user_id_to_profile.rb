class AddUserIdToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :user_id, :user, index: true, foreign_key: true
  end
end
