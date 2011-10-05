class SanatoriumNote < ActiveRecord::Base
  belongs_to :client
  validates :actual_date,:neediness_reference,:presence =>true
end
