class DoctorDesease < ActiveRecord::Base
  belongs_to :doctor_type
  belongs_to :desease_type
end
