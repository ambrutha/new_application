class AddcolmntoPhone < ActiveRecord::Migration
  def up
    add_column :phones, :check, :boolean
  end

  def down
  end
end
