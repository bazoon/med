class CreateHtmHelpTypes < ActiveRecord::Migration
  def change
    create_table :htm_help_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
