class DiagnosticTest < ActiveRecord::Base
  belongs_to :diagnostic_test_type
  validates :test_date,:diagnostic_test_type_id,:result, :presence => true
  belongs_to :client
end
