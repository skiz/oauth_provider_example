class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name, :last_name
      t.string :phone
      t.date :birthday
      t.timestamps
    end
    add_index :profiles, :user_id, :unique => true
  end

  def self.down
    remove_index :profiles, :column => :user_id
    drop_table :profiles
  end
end
