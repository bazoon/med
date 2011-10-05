class ProfInspection < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  validates :actual_date,:user,:conclusion,:client_id, :presence =>true
end
