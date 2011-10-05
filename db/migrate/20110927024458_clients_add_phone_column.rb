class ClientsAddPhoneColumn < ActiveRecord::Migration
  def up
    add_column :clients,:phones, :text
  end

  def down
  end
end
