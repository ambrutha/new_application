class Addcolmntocontact < ActiveRecord::Migration
  def up
add_column :emails, :check, :boolean
  end

  def down
  end
end
