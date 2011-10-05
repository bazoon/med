class CreateDiagnosticTests < ActiveRecord::Migration
  def change
    create_table :diagnostic_tests do |t|
      t.date :test_date
      t.integer :diagnostic_test_type
      t.string :result
      t.integer :client_id

      t.timestamps
    end
  end
end
