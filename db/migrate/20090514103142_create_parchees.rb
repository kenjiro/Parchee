class CreateParchees < ActiveRecord::Migration
  def self.up
    create_table :parchees do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.timestamp :date
      t.boolean :right_now_flg
      t.integer :user_latitude
      t.integer :user_longitude
      t.boolean :delete_flg
      t.timestamps
      t.timestamp :deleted_at
    end
  end

  def self.down
    drop_table :parchees
  end
end
