class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.integer :parchee_id
      t.integer :user_id
      t.boolean :attendance_flg
      t.string :message
      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
