class MedDiagnosticTest < ActiveRecord::Base
  belongs_to :med_diagnostic_test_type
  validates :test_date,:med_diagnostic_test_type_id,:result, :presence => true
  belongs_to :client
end
