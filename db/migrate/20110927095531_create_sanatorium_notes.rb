class CreateSanatoriumNotes < ActiveRecord::Migration
  def change
    create_table :sanatorium_notes do |t|
      t.date :actual_date
      t.integer :client_id
      t.text :neediness_reference
      t.text :sanatorium_card

      t.timestamps
    end
  end
end
