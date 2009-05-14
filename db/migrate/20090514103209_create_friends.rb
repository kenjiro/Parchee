class CreateFriends < ActiveRecord::Migration
  def self.up
    create_table :friends do |t|
      t.integer :user_id
      t.integer :friend_id
      t.boolean :progress_flg
      t.timestamps
    end
  end

  def self.down
    drop_table :friends
  end
end
