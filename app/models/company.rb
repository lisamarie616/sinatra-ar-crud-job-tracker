class Company < ActiveRecord::Base
  has_many :applications
  has_many :contacts

  validates :name, presence: true  
end