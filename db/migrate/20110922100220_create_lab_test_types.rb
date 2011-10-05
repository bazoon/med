class CreateLabTestTypes < ActiveRecord::Migration
  def change
    create_table :lab_test_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
