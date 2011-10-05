class UserFatherField < ActiveRecord::Migration
  def up
    remove_column :users,:farther_name
    add_column :users,:father_name,:string
  end

  def down
  end
end
