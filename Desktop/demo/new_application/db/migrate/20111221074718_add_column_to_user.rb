class AddColumnToUser < ActiveRecord::Migration
  def change
  add_column :users, :username, :string
  add_column :users, :mobile, :integer
  end
end
