class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :users_id
      t.string :phoneno
      t.integer :vericode
      t.boolean :status
      t.boolean :expiredcode
      t.timestamps
    end
  end
end
