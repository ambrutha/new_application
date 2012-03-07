class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :users_id
      t.integer :friendid
      t.boolean :isaccept
      t.datetime :timeline
      t.timestamps
    end
  end
end
