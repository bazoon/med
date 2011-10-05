class ClientSex < ActiveRecord::Base
  has_many :clients


def to_s
  sex  
end  
  
end
