class CreateDeseaseTypes < ActiveRecord::Migration
  def change
    create_table :desease_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
