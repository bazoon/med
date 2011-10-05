class DiagnosticTestTypeFix1 < ActiveRecord::Migration
  def up
    remove_column :diagnostic_tests,:diagnostic_test_type
    add_column :diagnostic_tests,:diagnostic_test_type_id,:integer
  end

  def down
  end
end
