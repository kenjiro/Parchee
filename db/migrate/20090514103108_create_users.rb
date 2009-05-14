class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :mail_address
      t.string :mobile_id
      t.boolean :simple_login_flg
      t.string :hashed_password
      t.string :salt
      t.string :activate_key
      t.boolean :activate_flg
      t.boolean :delete_flg
      t.timestamps
      t.timestamp :deleted_at
    end
  end

  def self.down
    drop_table :users
  end
end
