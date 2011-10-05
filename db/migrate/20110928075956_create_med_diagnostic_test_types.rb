class CreateMedDiagnosticTestTypes < ActiveRecord::Migration
  def change
    create_table :med_diagnostic_test_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
