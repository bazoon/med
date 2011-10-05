class CreateDiagnosticTestTypes < ActiveRecord::Migration
  def change
    create_table :diagnostic_test_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
