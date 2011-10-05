class UsersMakeUniqueEmailColumn < ActiveRecord::Migration
  def up
    remove_column :users,:email
    add_column :users,:email,:string, :unique => true
  end

  def down
  end
end
