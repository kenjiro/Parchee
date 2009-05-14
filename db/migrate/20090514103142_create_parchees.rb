class CreateParchees < ActiveRecord::Migration
  def self.up
    create_table :parchees do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :parchees
  end
end
