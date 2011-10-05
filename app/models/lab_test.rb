class LabTest < ActiveRecord::Base
  belongs_to :client
  belongs_to :lab_test_type

  validates :result,:test_date,:lab_test_type_id,:presence => true
end
