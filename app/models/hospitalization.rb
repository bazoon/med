class Hospitalization < ActiveRecord::Base
  belongs_to :hospitalization_type
  belongs_to :client

  validates :hospitalization_type_id, :actual_date, :presence => true
end
