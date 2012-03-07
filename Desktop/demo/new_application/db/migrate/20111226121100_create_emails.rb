class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :users_id
      t.string :email
      t.integer :vericode
      t.boolean :status
      t.boolean :expiredcode
      t.timestamps
    end
  end
end
